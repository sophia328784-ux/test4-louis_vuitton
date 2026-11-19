package com.vuitton.android.presentation.screen.authentication.register.models;

import defpackage.be0;
import defpackage.d21;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterErrorListUiModelException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;", "errorList", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class NativeRegisterErrorListUiModelException extends Exception {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f53954c = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f53955b;

    public NativeRegisterErrorListUiModelException(List<? extends NativeRegisterExceptionUiModel> list) {
        list.getClass();
        this.f53955b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof NativeRegisterErrorListUiModelException) && Intrinsics.c(this.f53955b, ((NativeRegisterErrorListUiModelException) obj).f53955b);
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return CollectionsKt.K(this.f53955b, null, null, null, new be0(23), 31);
    }

    public final int hashCode() {
        return this.f53955b.hashCode();
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return d21.o("NativeRegisterErrorListUiModelException(errorList=", ")", this.f53955b);
    }
}
