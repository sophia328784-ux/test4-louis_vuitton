package com.vuitton.android.presentation.screen.account.userworldwideid;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/userworldwideid/StoreModeAffiliation;", "", "Success", "Lcom/vuitton/android/presentation/screen/account/userworldwideid/StoreModeAffiliation$Success;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class StoreModeAffiliation {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/userworldwideid/StoreModeAffiliation$Success;", "Lcom/vuitton/android/presentation/screen/account/userworldwideid/StoreModeAffiliation;", "", "rmsCode", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Success extends StoreModeAffiliation {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f52687a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(String str) {
            super(null);
            str.getClass();
            this.f52687a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Success) && Intrinsics.c(this.f52687a, ((Success) obj).f52687a);
        }

        public final int hashCode() {
            return this.f52687a.hashCode();
        }

        public final String toString() {
            return fc.h("Success(rmsCode=", this.f52687a, ")");
        }
    }

    public StoreModeAffiliation(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
