package com.bumptech.glide.load.resource;

import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.util.Log;
import android.util.Size;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.PreferredColorSpace;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.load.resource.bitmap.HardwareConfigState;

/* JADX INFO: loaded from: classes2.dex */
public final class DefaultOnHeaderDecodedListener implements ImageDecoder.OnHeaderDecodedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HardwareConfigState f24741a = HardwareConfigState.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f24742b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f24743c;
    public final DecodeFormat d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final DownsampleStrategy f24744e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f24745f;
    public final PreferredColorSpace g;

    /* JADX INFO: renamed from: com.bumptech.glide.load.resource.DefaultOnHeaderDecodedListener$1, reason: invalid class name */
    class AnonymousClass1 implements ImageDecoder.OnPartialImageListener {
        @Override // android.graphics.ImageDecoder.OnPartialImageListener
        public final boolean onPartialImage(ImageDecoder.DecodeException decodeException) {
            return false;
        }
    }

    public DefaultOnHeaderDecodedListener(int i2, int i3, Options options) {
        this.f24742b = i2;
        this.f24743c = i3;
        this.d = (DecodeFormat) options.c(Downsampler.f24773f);
        this.f24744e = (DownsampleStrategy) options.c(DownsampleStrategy.f24772f);
        Option option = Downsampler.f24775i;
        this.f24745f = options.c(option) != null && ((Boolean) options.c(option)).booleanValue();
        this.g = (PreferredColorSpace) options.c(Downsampler.g);
    }

    @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
    public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
        HardwareConfigState hardwareConfigState = this.f24741a;
        int width = this.f24742b;
        int height = this.f24743c;
        if (hardwareConfigState.b(width, height, this.f24745f, false)) {
            imageDecoder.setAllocator(3);
        } else {
            imageDecoder.setAllocator(1);
        }
        if (this.d == DecodeFormat.PREFER_RGB_565) {
            imageDecoder.setMemorySizePolicy(0);
        }
        imageDecoder.setOnPartialImageListener(new AnonymousClass1());
        Size size = imageInfo.getSize();
        if (width == Integer.MIN_VALUE) {
            width = size.getWidth();
        }
        if (height == Integer.MIN_VALUE) {
            height = size.getHeight();
        }
        float fB = this.f24744e.b(size.getWidth(), size.getHeight(), width, height);
        int iRound = Math.round(size.getWidth() * fB);
        int iRound2 = Math.round(fB * size.getHeight());
        if (Log.isLoggable("ImageDecoder", 2)) {
            size.getWidth();
            size.getHeight();
        }
        imageDecoder.setTargetSize(iRound, iRound2);
        PreferredColorSpace preferredColorSpace = this.g;
        if (preferredColorSpace != null) {
            imageDecoder.setTargetColorSpace(ColorSpace.get((preferredColorSpace == PreferredColorSpace.DISPLAY_P3 && imageInfo.getColorSpace() != null && imageInfo.getColorSpace().isWideGamut()) ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB));
        }
    }
}
