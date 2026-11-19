package com.vuitton.android.presentation.di.file;

import android.content.Context;
import androidx.core.content.FileProvider;
import com.vuitton.android.core.type.FileLocation;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/android/core/type/FileLocation;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.di.file.FileStorageProviderImpl$saveToCache$2", f = "FileStorageProviderImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class FileStorageProviderImpl$saveToCache$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super FileLocation>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FileStorageProviderImpl f51480b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ InputStream f51481c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileStorageProviderImpl$saveToCache$2(FileStorageProviderImpl fileStorageProviderImpl, InputStream inputStream, String str, Continuation continuation) {
        super(2, continuation);
        this.f51480b = fileStorageProviderImpl;
        this.f51481c = inputStream;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FileStorageProviderImpl$saveToCache$2(this.f51480b, this.f51481c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FileStorageProviderImpl$saveToCache$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws IOException {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        Context context = this.f51480b.f51476a;
        File externalCacheDir = context.getExternalCacheDir();
        if (externalCacheDir == null) {
            externalCacheDir = context.getCacheDir();
        }
        InputStream inputStream = this.f51481c;
        String absolutePath = externalCacheDir.getAbsolutePath();
        absolutePath.getClass();
        try {
            File file = new File(absolutePath, this.d);
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                ByteStreamsKt.a(inputStream, fileOutputStream);
                fileOutputStream.close();
                inputStream.close();
                String string = FileProvider.getUriForFile(context, "com.vuitton.android.fileprovider", file).toString();
                string.getClass();
                return new FileLocation(string);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.a(fileOutputStream, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                CloseableKt.a(inputStream, th3);
                throw th4;
            }
        }
    }
}
