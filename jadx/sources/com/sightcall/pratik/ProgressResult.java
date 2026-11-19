package com.sightcall.pratik;

import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u00032\u00020\u0004:\u0003\u0001\u0002\u0003B\t\b\u0004¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/sightcall/pratik/ProgressResult;", "Progress", "Success", "Error", "", "<init>", "()V", "Lcom/sightcall/pratik/ProgressResult$Error;", "Lcom/sightcall/pratik/ProgressResult$Progress;", "Lcom/sightcall/pratik/ProgressResult$Success;", "pratik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class ProgressResult<Progress, Success, Error> {

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u0000*\u0004\b\u0003\u0010\u0001*\u0004\b\u0004\u0010\u0002*\u0004\b\u0005\u0010\u00032\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0004B\u000f\u0012\u0006\u0010\u0005\u001a\u00028\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\u000b\u001a\u00028\u0005HÆ\u0003¢\u0006\u0002\u0010\tJ*\u0010\f\u001a\u0014\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00050\u00002\b\b\u0002\u0010\u0005\u001a\u00028\u0005HÆ\u0001¢\u0006\u0002\u0010\rJ\u0014\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0013HÖ\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0015HÖ\u0081\u0004R\u0013\u0010\u0005\u001a\u00028\u0005¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/sightcall/pratik/ProgressResult$Error;", "Progress", "Success", "Error", "Lcom/sightcall/pratik/ProgressResult;", "error", "<init>", "(Ljava/lang/Object;)V", "getError", "()Ljava/lang/Object;", "Ljava/lang/Object;", "component1", "copy", "(Ljava/lang/Object;)Lcom/sightcall/pratik/ProgressResult$Error;", "equals", "", "other", "", "hashCode", "", "toString", "", "pratik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Error<Progress, Success, Error> extends ProgressResult<Progress, Success, Error> {
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

        public final Error<Progress, Success, Error> copy(Error error) {
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

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u0000*\u0004\b\u0003\u0010\u0001*\u0004\b\u0004\u0010\u0002*\u0004\b\u0005\u0010\u00032\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0004B\u000f\u0012\u0006\u0010\u0005\u001a\u00028\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\u000b\u001a\u00028\u0003HÆ\u0003¢\u0006\u0002\u0010\tJ*\u0010\f\u001a\u0014\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00050\u00002\b\b\u0002\u0010\u0005\u001a\u00028\u0003HÆ\u0001¢\u0006\u0002\u0010\rJ\u0014\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0013HÖ\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0015HÖ\u0081\u0004R\u0013\u0010\u0005\u001a\u00028\u0003¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/sightcall/pratik/ProgressResult$Progress;", "Progress", "Success", "Error", "Lcom/sightcall/pratik/ProgressResult;", "progress", "<init>", "(Ljava/lang/Object;)V", "getProgress", "()Ljava/lang/Object;", "Ljava/lang/Object;", "component1", "copy", "(Ljava/lang/Object;)Lcom/sightcall/pratik/ProgressResult$Progress;", "equals", "", "other", "", "hashCode", "", "toString", "", "pratik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Progress<Progress, Success, Error> extends ProgressResult<Progress, Success, Error> {
        private final Progress progress;

        public Progress(Progress progress) {
            super(null);
            this.progress = progress;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Progress copy$default(Progress progress, Object obj, int i2, Object obj2) {
            if ((i2 & 1) != 0) {
                obj = progress.progress;
            }
            return progress.copy(obj);
        }

        public final Progress component1() {
            return this.progress;
        }

        public final Progress<Progress, Success, Error> copy(Progress progress) {
            return new Progress<>(progress);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Progress) && Intrinsics.c(this.progress, ((Progress) other).progress);
        }

        public final Progress getProgress() {
            return this.progress;
        }

        public int hashCode() {
            Progress progress = this.progress;
            if (progress == null) {
                return 0;
            }
            return progress.hashCode();
        }

        public String toString() {
            return o60.n("Progress(progress=", this.progress, ")");
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u0000*\u0004\b\u0003\u0010\u0001*\u0004\b\u0004\u0010\u0002*\u0004\b\u0005\u0010\u00032\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0004B\u000f\u0012\u0006\u0010\u0005\u001a\u00028\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\u000b\u001a\u00028\u0004HÆ\u0003¢\u0006\u0002\u0010\tJ*\u0010\f\u001a\u0014\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00050\u00002\b\b\u0002\u0010\u0005\u001a\u00028\u0004HÆ\u0001¢\u0006\u0002\u0010\rJ\u0014\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0013HÖ\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0015HÖ\u0081\u0004R\u0013\u0010\u0005\u001a\u00028\u0004¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/sightcall/pratik/ProgressResult$Success;", "Progress", "Success", "Error", "Lcom/sightcall/pratik/ProgressResult;", "success", "<init>", "(Ljava/lang/Object;)V", "getSuccess", "()Ljava/lang/Object;", "Ljava/lang/Object;", "component1", "copy", "(Ljava/lang/Object;)Lcom/sightcall/pratik/ProgressResult$Success;", "equals", "", "other", "", "hashCode", "", "toString", "", "pratik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Success<Progress, Success, Error> extends ProgressResult<Progress, Success, Error> {
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

        public final Success<Progress, Success, Error> copy(Success success) {
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

    public /* synthetic */ ProgressResult(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private ProgressResult() {
    }
}
