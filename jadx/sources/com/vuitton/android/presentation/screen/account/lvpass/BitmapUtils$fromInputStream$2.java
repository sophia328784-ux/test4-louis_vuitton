package com.vuitton.android.presentation.screen.account.lvpass;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.BufferedInputStream;
import java.io.InputStream;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroid/graphics/Bitmap;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.lvpass.BitmapUtils$fromInputStream$2", f = "BitmapUtils.kt", l = {}, m = "invokeSuspend", v = 2)
final class BitmapUtils$fromInputStream$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Bitmap>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f52433b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ InputStream f52434c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BitmapUtils$fromInputStream$2(InputStream inputStream, Continuation continuation) {
        super(2, continuation);
        this.f52434c = inputStream;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        BitmapUtils$fromInputStream$2 bitmapUtils$fromInputStream$2 = new BitmapUtils$fromInputStream$2(this.f52434c, continuation);
        bitmapUtils$fromInputStream$2.f52433b = obj;
        return bitmapUtils$fromInputStream$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BitmapUtils$fromInputStream$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        InputStream inputStream = this.f52434c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        try {
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                byte[] bArrB = ByteStreamsKt.b(bufferedInputStream);
                bufferedInputStream.close();
                if (bArrB.length == 0) {
                    try {
                        inputStream.close();
                    } catch (Exception unused) {
                    }
                    return null;
                }
                if (bArrB.length >= 8 && Arrays.equals(ArraysKt.o(bArrB, 0, 8), new byte[]{-119, 80, 78, 71, 13, 10, 26, 10})) {
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeByteArray(bArrB, 0, bArrB.length, options);
                    int i2 = options.outWidth;
                    int i3 = options.outHeight;
                    if (i2 > 0 && i3 > 0) {
                        options.inJustDecodeBounds = false;
                        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrB, 0, bArrB.length, options);
                        Bitmap bitmap = bitmapDecodeByteArray != null ? bitmapDecodeByteArray : null;
                        try {
                            inputStream.close();
                        } catch (Exception unused2) {
                        }
                        return bitmap;
                    }
                    try {
                        inputStream.close();
                    } catch (Exception unused3) {
                    }
                    return null;
                }
                try {
                    inputStream.close();
                } catch (Exception unused4) {
                }
                return null;
            } catch (Exception unused5) {
            }
        } catch (Exception unused6) {
            inputStream.close();
            return null;
        } catch (Throwable th) {
            try {
                inputStream.close();
            } catch (Exception unused7) {
            }
            throw th;
        }
        return null;
    }
}
