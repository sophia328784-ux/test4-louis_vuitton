package com.sightcall.pratik;

import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003:\u0002\u0001\u0002B\t\b\u0004¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/sightcall/pratik/Result;", "Success", "Error", "", "<init>", "()V", "Lcom/sightcall/pratik/Result$Error;", "Lcom/sightcall/pratik/Result$Success;", "pratik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class Result<Success, Error> {

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00028\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000e\u0010\n\u001a\u00028\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ$\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00002\b\b\u0002\u0010\u0004\u001a\u00028\u0003HÆ\u0001¢\u0006\u0002\u0010\fJ\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0083\u0004J\n\u0010\u0011\u001a\u00020\u0012HÖ\u0081\u0004J\n\u0010\u0013\u001a\u00020\u0014HÖ\u0081\u0004R\u0013\u0010\u0004\u001a\u00028\u0003¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/sightcall/pratik/Result$Error;", "Success", "Error", "Lcom/sightcall/pratik/Result;", "error", "<init>", "(Ljava/lang/Object;)V", "getError", "()Ljava/lang/Object;", "Ljava/lang/Object;", "component1", "copy", "(Ljava/lang/Object;)Lcom/sightcall/pratik/Result$Error;", "equals", "", "other", "", "hashCode", "", "toString", "", "pratik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Error<Success, Error> extends Result<Success, Error> {
        private final Error error;

        public Error(Error error) {
            super(null);
            this.error = error;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Error copy$default(Error error, Object obj, int i2, Object obj2) {
            if ((i2 & 1) != 0) {
                obj = error.error;
            }
            return error.copy(obj);
        }

        public final Error component1() {
            return this.error;
        }

        public final Error<Success, Error> copy(Error error) {
            return new Error<>(error);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Error) && Intrinsics.c(this.error, ((Error) other).error);
        }

        public final Error getError() {
            return this.error;
        }

        public int hashCode() {
            Error error = this.error;
            if (error == null) {
                return 0;
            }
            return error.hashCode();
        }

        public String toString() {
            return o60.n("Error(error=", this.error, ")");
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00028\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000e\u0010\n\u001a\u00028\u0002HÆ\u0003¢\u0006\u0002\u0010\bJ$\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00002\b\b\u0002\u0010\u0004\u001a\u00028\u0002HÆ\u0001¢\u0006\u0002\u0010\fJ\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0083\u0004J\n\u0010\u0011\u001a\u00020\u0012HÖ\u0081\u0004J\n\u0010\u0013\u001a\u00020\u0014HÖ\u0081\u0004R\u0013\u0010\u0004\u001a\u00028\u0002¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/sightcall/pratik/Result$Success;", "Success", "Error", "Lcom/sightcall/pratik/Result;", "success", "<init>", "(Ljava/lang/Object;)V", "getSuccess", "()Ljava/lang/Object;", "Ljava/lang/Object;", "component1", "copy", "(Ljava/lang/Object;)Lcom/sightcall/pratik/Result$Success;", "equals", "", "other", "", "hashCode", "", "toString", "", "pratik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Success<Success, Error> extends Result<Success, Error> {
        private final Success success;

        public Success(Success success) {
            super(null);
            this.success = success;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Success copy$default(Success success, Object obj, int i2, Object obj2) {
            if ((i2 & 1) != 0) {
                obj = success.success;
            }
            return success.copy(obj);
        }

        public final Success component1() {
            return this.success;
        }

        public final Success<Success, Error> copy(Success success) {
            return new Success<>(success);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Success) && Intrinsics.c(this.success, ((Success) other).success);
        }

        public final Success getSuccess() {
            return this.success;
        }

        public int hashCode() {
            Success success = this.success;
            if (success == null) {
                return 0;
            }
            return success.hashCode();
        }

        public String toString() {
            return o60.n("Success(success=", this.success, ")");
        }
    }

    public /* synthetic */ Result(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private Result() {
    }
}
