package com.vuitton.foundation.model.domain.error.lvpass;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0003\u0003\u0004\u0005\u0082\u0001\u0003\u0006\u0007\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "LvPassMultipartError", "LvPass2dError", "LvPass3dError", "Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError$LvPass2dError;", "Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError$LvPass3dError;", "Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError$LvPassMultipartError;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class LvPassError extends RuntimeException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66221b;

    public /* synthetic */ LvPassError(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, null);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.f66221b;
    }

    public LvPassError(String str, DefaultConstructorMarker defaultConstructorMarker) {
        super(str);
        this.f66221b = str;
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError$LvPass2dError;", "Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError;", "", "message", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class LvPass2dError extends LvPassError {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f66222c;

        public LvPass2dError(String str) {
            super(str == null ? "LvPass 2d Error" : str, null);
            this.f66222c = str;
        }

        @Override // com.vuitton.foundation.model.domain.error.lvpass.LvPassError, java.lang.Throwable
        public final String getMessage() {
            return this.f66222c;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public LvPass2dError() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public /* synthetic */ LvPass2dError(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : str);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError$LvPass3dError;", "Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError;", "", "message", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class LvPass3dError extends LvPassError {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f66223c;

        public LvPass3dError(String str) {
            super(str == null ? "LvPass 3d Error" : str, null);
            this.f66223c = str;
        }

        @Override // com.vuitton.foundation.model.domain.error.lvpass.LvPassError, java.lang.Throwable
        public final String getMessage() {
            return this.f66223c;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public LvPass3dError() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public /* synthetic */ LvPass3dError(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : str);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError$LvPassMultipartError;", "Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError;", "", "message", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LvPassMultipartError extends LvPassError {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f66224c;

        public LvPassMultipartError(String str) {
            super(str == null ? "Error parsing multipart " : str, null);
            this.f66224c = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof LvPassMultipartError) && Intrinsics.c(this.f66224c, ((LvPassMultipartError) obj).f66224c);
        }

        @Override // com.vuitton.foundation.model.domain.error.lvpass.LvPassError, java.lang.Throwable
        public final String getMessage() {
            return this.f66224c;
        }

        public final int hashCode() {
            String str = this.f66224c;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        @Override // java.lang.Throwable
        public final String toString() {
            return fc.h("LvPassMultipartError(message=", this.f66224c, ")");
        }

        /* JADX WARN: Multi-variable type inference failed */
        public LvPassMultipartError() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public /* synthetic */ LvPassMultipartError(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : str);
        }
    }
}
