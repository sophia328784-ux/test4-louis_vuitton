package com.vuitton.android.data.account.address.exception;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0002\u0003\u0004\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/account/address/exception/AddressException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "NoChinaAddressException", "InvalidIdentifierForUpdate", "Lcom/vuitton/android/data/account/address/exception/AddressException$InvalidIdentifierForUpdate;", "Lcom/vuitton/android/data/account/address/exception/AddressException$NoChinaAddressException;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class AddressException extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f43536b;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/account/address/exception/AddressException$InvalidIdentifierForUpdate;", "Lcom/vuitton/android/data/account/address/exception/AddressException;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class InvalidIdentifierForUpdate extends AddressException {
        public InvalidIdentifierForUpdate() {
            super("Invalid identifier to update", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/account/address/exception/AddressException$NoChinaAddressException;", "Lcom/vuitton/android/data/account/address/exception/AddressException;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class NoChinaAddressException extends AddressException {
        public NoChinaAddressException() {
            super("No china address found", null);
        }
    }

    public AddressException(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f43536b = str;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f43536b;
    }
}
