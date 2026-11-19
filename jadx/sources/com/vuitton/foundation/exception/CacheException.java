package com.vuitton.foundation.exception;

import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0002\u0003\u0004\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/exception/CacheException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "TransactionException", "NoResultException", "Lcom/vuitton/foundation/exception/CacheException$NoResultException;", "Lcom/vuitton/foundation/exception/CacheException$TransactionException;", "util"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class CacheException extends Exception {
    public CacheException(String str, DefaultConstructorMarker defaultConstructorMarker) {
        super(str);
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/exception/CacheException$NoResultException;", "Lcom/vuitton/foundation/exception/CacheException;", "", "message", "<init>", "(Ljava/lang/String;)V", "util"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NoResultException extends CacheException {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66202b;

        public NoResultException(String str) {
            super(str == null ? "No result found" : str, null);
            this.f66202b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NoResultException) && Intrinsics.c(this.f66202b, ((NoResultException) obj).f66202b);
        }

        @Override // java.lang.Throwable
        public final String getMessage() {
            return this.f66202b;
        }

        public final int hashCode() {
            String str = this.f66202b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        @Override // java.lang.Throwable
        public final String toString() {
            return fc.h("NoResultException(message=", this.f66202b, ")");
        }

        /* JADX WARN: Multi-variable type inference failed */
        public NoResultException() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public /* synthetic */ NoResultException(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : str);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/exception/CacheException$TransactionException;", "Lcom/vuitton/foundation/exception/CacheException;", "", "message", "<init>", "(Ljava/lang/String;)V", "util"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class TransactionException extends CacheException {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66203b;

        public TransactionException(String str) {
            super(tr.g("Error happened with cache - ", str), null);
            this.f66203b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof TransactionException) && Intrinsics.c(this.f66203b, ((TransactionException) obj).f66203b);
        }

        @Override // java.lang.Throwable
        public final String getMessage() {
            return this.f66203b;
        }

        public final int hashCode() {
            String str = this.f66203b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        @Override // java.lang.Throwable
        public final String toString() {
            return fc.h("TransactionException(message=", this.f66203b, ")");
        }

        /* JADX WARN: Multi-variable type inference failed */
        public TransactionException() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public /* synthetic */ TransactionException(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : str);
        }
    }
}
