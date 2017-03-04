#include <stdio.h>
#include <time.h>
#include <stdlib.h>

void* generate_random_image(int width, int height)
{
    srand(time(NULL));
    int i=0;
    unsigned char* buffer = (unsigned char*)malloc(width * height * 4);
    if(buffer != NULL)
    {
        for(i=0; i<width*height*4; i+=4)
        {
            buffer[i+0] = (unsigned char)(255);
            buffer[i+1] = (unsigned char)(0); 
            buffer[i+2] = (unsigned char)(0); 
            buffer[i+3] = (unsigned char)(50); 
        }
        return buffer;
    }
    else
    {
        printf("Failed to allocate memory\n");
        return NULL;
    }
}

void channel_swap(void* buffer, int size)
{
    unsigned char* imgBuf = (unsigned char*)buffer;
    int i = 0;
    unsigned char temp;

    for(i=0; i<size; i+=4)
    {
        temp = imgBuf[i+0];
        imgBuf[i+0] = imgBuf[i+2];
        imgBuf[i+2] = temp;
    }
}

int main(int argc, char** argv)
{
    FILE* fp;
    FILE* fpOut;
    void* img = NULL;

    img = generate_random_image(50, 50);

    if(img != NULL)
    {
        fp = fopen("src_img.raw", "wb");
        fwrite(img, 50*50*4, sizeof(unsigned char), fp);
        fclose(fp);

        channel_swap(img, 50*50*4);
        fpOut = fopen("out_img.raw", "wb");
        fwrite(img, 50*50*4, sizeof(unsigned char), fpOut);
        fclose(fpOut);
    }
    
    return 0;
}
