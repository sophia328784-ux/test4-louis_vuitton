package com.vuitton.android.presentation.di.file;

import android.content.Context;
import com.vuitton.android.core.file.FileStorageProvider;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.core.type.FileLocation;
import dagger.hilt.android.qualifiers.ApplicationContext;
import defpackage.md;
import java.io.InputStream;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u001b\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/di/file/FileStorageProviderImpl;", "Lcom/vuitton/android/core/file/FileStorageProvider;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "dispatchers", "<init>", "(Landroid/content/Context;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FileStorageProviderImpl implements FileStorageProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f51476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineDispatchers f51477b;

    @Inject
    public FileStorageProviderImpl(@ApplicationContext Context context, CoroutineDispatchers coroutineDispatchers) {
        context.getClass();
        coroutineDispatchers.getClass();
        this.f51476a = context;
        this.f51477b = coroutineDispatchers;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.core.file.FileStorageProvider
    public final Object a(InputStream inputStream, String str, ContinuationImpl continuationImpl) {
        FileStorageProviderImpl$saveToCache$1 fileStorageProviderImpl$saveToCache$1;
        if (continuationImpl instanceof FileStorageProviderImpl$saveToCache$1) {
            fileStorageProviderImpl$saveToCache$1 = (FileStorageProviderImpl$saveToCache$1) continuationImpl;
            int i2 = fileStorageProviderImpl$saveToCache$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                fileStorageProviderImpl$saveToCache$1.d = i2 - Integer.MIN_VALUE;
            } else {
                fileStorageProviderImpl$saveToCache$1 = new FileStorageProviderImpl$saveToCache$1(this, continuationImpl);
            }
        } else {
            fileStorageProviderImpl$saveToCache$1 = new FileStorageProviderImpl$saveToCache$1(this, continuationImpl);
        }
        Object objF = fileStorageProviderImpl$saveToCache$1.f51478b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = fileStorageProviderImpl$saveToCache$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f51477b.getF43530b();
            FileStorageProviderImpl$saveToCache$2 fileStorageProviderImpl$saveToCache$2 = new FileStorageProviderImpl$saveToCache$2(this, inputStream, str, null);
            fileStorageProviderImpl$saveToCache$1.d = 1;
            objF = BuildersKt.f(f43530b, fileStorageProviderImpl$saveToCache$2, fileStorageProviderImpl$saveToCache$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((FileLocation) objF).f43532a;
    }
}
