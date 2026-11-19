package com.vuitton.android.presentation.ar.renderer;

import com.dynatrace.android.callback.Callback;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.URL;
import java.net.URLConnection;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Ljava/io/File;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.ar.renderer.ModelRenderer$getCacheFile$2", f = "ModelRenderer.kt", l = {}, m = "invokeSuspend", v = 2)
final class ModelRenderer$getCacheFile$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super File>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50654b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ModelRenderer f50655c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f50656e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModelRenderer$getCacheFile$2(ModelRenderer modelRenderer, String str, String str2, Continuation continuation) {
        super(2, continuation);
        this.f50655c = modelRenderer;
        this.d = str;
        this.f50656e = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ModelRenderer$getCacheFile$2 modelRenderer$getCacheFile$2 = new ModelRenderer$getCacheFile$2(this.f50655c, this.d, this.f50656e, continuation);
        modelRenderer$getCacheFile$2.f50654b = obj;
        return modelRenderer$getCacheFile$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ModelRenderer$getCacheFile$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object failure;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        ModelRenderer modelRenderer = this.f50655c;
        String str = this.d;
        String str2 = this.f50656e;
        try {
            Result.Companion companion = Result.INSTANCE;
            File file = new File(modelRenderer.f50621a.getCacheDir(), "nomade");
            file.mkdirs();
            File file2 = new File(file, str);
            if (file2.exists()) {
                failure = file2;
            } else {
                URLConnection uRLConnectionOpenConnection = new URL(str2).openConnection();
                Callback.C(uRLConnectionOpenConnection);
                uRLConnectionOpenConnection.getClass();
                BufferedInputStream bufferedInputStream = new BufferedInputStream(Callback.h(uRLConnectionOpenConnection));
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[50];
                while (true) {
                    int i2 = bufferedInputStream.read(bArr, 0, 50);
                    if (i2 == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i2);
                }
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                fileOutputStream.write(byteArrayOutputStream.toByteArray());
                fileOutputStream.close();
                failure = file2;
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Result.Companion companion3 = Result.INSTANCE;
        if (failure instanceof Result.Failure) {
            return null;
        }
        return failure;
    }
}
