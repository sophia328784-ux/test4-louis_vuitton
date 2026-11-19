package com.google.android.filament.utils;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.google.android.filament.Engine;
import com.google.android.filament.Texture;
import com.google.android.filament.android.TextureHelper;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"filament-utils-android_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class TextureLoaderKt {

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f28673a;

        static {
            int[] iArr = new int[TextureType.values().length];
            try {
                iArr[TextureType.COLOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TextureType.NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TextureType.DATA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f28673a = iArr;
        }
    }

    public static final Texture a(Engine engine, Resources resources, int i2, TextureType textureType) {
        Texture.InternalFormat internalFormat;
        engine.getClass();
        resources.getClass();
        textureType.getClass();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPremultiplied = textureType == TextureType.COLOR;
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(resources, i2, options);
        bitmapDecodeResource.getClass();
        Texture.Builder builder = new Texture.Builder();
        int width = bitmapDecodeResource.getWidth();
        long j2 = builder.f28580b;
        Texture.nBuilderWidth(j2, width);
        Texture.nBuilderHeight(j2, bitmapDecodeResource.getHeight());
        builder.c(Texture.Sampler.SAMPLER_2D);
        int i3 = WhenMappings.f28673a[textureType.ordinal()];
        if (i3 == 1) {
            internalFormat = Texture.InternalFormat.SRGB8_A8;
        } else {
            if (i3 != 2 && i3 != 3) {
                v40.g();
                return null;
            }
            internalFormat = Texture.InternalFormat.RGBA8;
        }
        builder.b(internalFormat);
        Texture.nBuilderLevels(j2, 255);
        Texture.nBuilderUsage(j2, 536);
        Texture textureA = builder.a(engine);
        TextureHelper.a(engine, textureA, bitmapDecodeResource);
        textureA.k(engine);
        return textureA;
    }
}
