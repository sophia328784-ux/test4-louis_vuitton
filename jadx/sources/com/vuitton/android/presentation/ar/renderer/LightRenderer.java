package com.vuitton.android.presentation.ar.renderer;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.google.android.filament.Engine;
import com.google.android.filament.EntityManager;
import com.google.android.filament.LightManager;
import com.google.android.filament.Texture;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.vuitton.android.presentation.ar.filament.Filament;
import defpackage.n00;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.io.CloseableKt;
import kotlin.math.MathKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/ar/renderer/LightRenderer;", "", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/vuitton/android/presentation/ar/filament/Filament;", "filament", "<init>", "(Landroid/content/Context;Lcom/vuitton/android/presentation/ar/filament/Filament;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LightRenderer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Filament f50618a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Texture f50619b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float[] f50620c;
    public final int d;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [int] */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v4, types: [int] */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8 */
    public LightRenderer(Context context, Filament filament) throws IOException {
        context.getClass();
        filament.getClass();
        this.f50618a = filament;
        AssetManager assets = context.getAssets();
        assets.getClass();
        Engine engine = filament.f50582c;
        InputStream inputStreamOpen = assets.open("reflections/m0_nx.rgb32f");
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(inputStreamOpen, null, options);
            Pair pair = new Pair(Integer.valueOf(options.outWidth), Integer.valueOf(options.outHeight));
            CloseableKt.a(inputStreamOpen, null);
            int iIntValue = ((Number) pair.f71705b).intValue();
            int iIntValue2 = ((Number) pair.f71706c).intValue();
            Texture.Builder builder = new Texture.Builder();
            long j2 = builder.f28580b;
            Texture.nBuilderWidth(j2, iIntValue);
            Texture.nBuilderHeight(j2, iIntValue2);
            Texture.nBuilderLevels(j2, ((int) MathKt.a(iIntValue)) + 1);
            builder.b(Texture.InternalFormat.R11F_G11F_B10F);
            builder.c(Texture.Sampler.SAMPLER_CUBEMAP);
            Texture.nBuilderUsage(j2, 536);
            Texture textureA = builder.a(engine);
            int iM = textureA.m();
            boolean z = false;
            int i2 = 0;
            while (i2 < iM) {
                String strM = n00.m(i2, NBSSpanMetricUnit.Minute, "_");
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                options2.inPremultiplied = z;
                int iL = textureA.l(i2) * textureA.n(i2);
                int i3 = iL * 4;
                char c2 = 6;
                int[] iArr = new int[6];
                for (?? r14 = z; r14 < 6; r14++) {
                    iArr[r14] = r14 * i3;
                }
                ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(iL * 24);
                String[] strArr = {"px", "nx", "py", "ny", "pz", "nz"};
                for (?? r15 = z; r15 < c2; r15++) {
                    try {
                        InputStream inputStreamOpen2 = assets.open("reflections/" + strM + strArr[r15] + ".rgb32f");
                        try {
                            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpen2, null, options2);
                            if (bitmapDecodeStream != null) {
                                bitmapDecodeStream.copyPixelsToBuffer(byteBufferAllocateDirect);
                            }
                            CloseableKt.a(inputStreamOpen2, null);
                            c2 = 6;
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.a(inputStreamOpen2, th);
                                throw th2;
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
                byteBufferAllocateDirect.flip();
                textureA.o(engine, i2, new Texture.PixelBufferDescriptor(byteBufferAllocateDirect, Texture.Format.RGB, Texture.Type.UINT_10F_11F_11F_REV), iArr);
                i2++;
                z = false;
            }
            this.f50619b = textureA;
            this.f50620c = new float[27];
            int iA = EntityManager.c().a();
            this.f50618a.f50583e.b(iA);
            LightManager.Builder builder2 = new LightManager.Builder(LightManager.Type.DIRECTIONAL);
            LightManager.nBuilderCastShadows(builder2.f28555b, true);
            builder2.a(this.f50618a.f50582c, iA);
            this.d = this.f50618a.f50582c.f28536c.l(iA);
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                CloseableKt.a(inputStreamOpen, th3);
                throw th4;
            }
        }
    }
}
