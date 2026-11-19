package com.vuitton.android.domain.usecase.dispatch;

import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u000eB1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;", "", "Lcom/vuitton/android/domain/usecase/dispatch/GetDispatchAreaListUseCase;", "getDispatchAreaListUseCase", "Lcom/vuitton/android/domain/usecase/dispatch/FindDispatchForPhoneUseCase;", "findDispatchForPhoneUseCase", "Lcom/vuitton/android/domain/usecase/dispatch/FindUserInAppDispatchUseCase;", "findUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;", "saveUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/dispatch/ClearUserInAppDispatchUseCase;", "clearUserInAppDispatchUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/dispatch/GetDispatchAreaListUseCase;Lcom/vuitton/android/domain/usecase/dispatch/FindDispatchForPhoneUseCase;Lcom/vuitton/android/domain/usecase/dispatch/FindUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dispatch/ClearUserInAppDispatchUseCase;)V", "InAppDispatchStatus", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DetermineUserInAppDispatchStatusUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetDispatchAreaListUseCase f49893a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FindDispatchForPhoneUseCase f49894b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FindUserInAppDispatchUseCase f49895c;
    public final SaveUserInAppDispatchUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ClearUserInAppDispatchUseCase f49896e;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus;", "", "FetchDispatchAreaListFailed", "InAppDispatchNotSet", "InAppDispatchAutoSelected", "InAppDispatchDeprecated", "InAppDispatchValid", "Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus$FetchDispatchAreaListFailed;", "Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus$InAppDispatchAutoSelected;", "Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus$InAppDispatchDeprecated;", "Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus$InAppDispatchNotSet;", "Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus$InAppDispatchValid;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class InAppDispatchStatus {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus$FetchDispatchAreaListFailed;", "Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class FetchDispatchAreaListFailed extends InAppDispatchStatus {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final FetchDispatchAreaListFailed f49897a = new FetchDispatchAreaListFailed(null);

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof FetchDispatchAreaListFailed);
            }

            public final int hashCode() {
                return -1989752815;
            }

            public final String toString() {
                return "FetchDispatchAreaListFailed";
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus$InAppDispatchAutoSelected;", "Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus;", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "<init>", "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class InAppDispatchAutoSelected extends InAppDispatchStatus {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final InAppDispatch f49898a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public InAppDispatchAutoSelected(InAppDispatch inAppDispatch) {
                super(null);
                inAppDispatch.getClass();
                this.f49898a = inAppDispatch;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof InAppDispatchAutoSelected) && Intrinsics.c(this.f49898a, ((InAppDispatchAutoSelected) obj).f49898a);
            }

            public final int hashCode() {
                return this.f49898a.hashCode();
            }

            public final String toString() {
                return "InAppDispatchAutoSelected(inAppDispatch=" + this.f49898a + ")";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus$InAppDispatchDeprecated;", "Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class InAppDispatchDeprecated extends InAppDispatchStatus {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final InAppDispatchDeprecated f49899a = new InAppDispatchDeprecated(null);

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof InAppDispatchDeprecated);
            }

            public final int hashCode() {
                return 755739358;
            }

            public final String toString() {
                return "InAppDispatchDeprecated";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus$InAppDispatchNotSet;", "Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class InAppDispatchNotSet extends InAppDispatchStatus {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final InAppDispatchNotSet f49900a = new InAppDispatchNotSet(null);

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof InAppDispatchNotSet);
            }

            public final int hashCode() {
                return -259139782;
            }

            public final String toString() {
                return "InAppDispatchNotSet";
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus$InAppDispatchValid;", "Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus;", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "<init>", "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class InAppDispatchValid extends InAppDispatchStatus {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final InAppDispatch f49901a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public InAppDispatchValid(InAppDispatch inAppDispatch) {
                super(null);
                inAppDispatch.getClass();
                this.f49901a = inAppDispatch;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof InAppDispatchValid) && Intrinsics.c(this.f49901a, ((InAppDispatchValid) obj).f49901a);
            }

            public final int hashCode() {
                return this.f49901a.hashCode();
            }

            public final String toString() {
                return "InAppDispatchValid(inAppDispatch=" + this.f49901a + ")";
            }
        }

        public InAppDispatchStatus(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Inject
    public DetermineUserInAppDispatchStatusUseCase(GetDispatchAreaListUseCase getDispatchAreaListUseCase, FindDispatchForPhoneUseCase findDispatchForPhoneUseCase, FindUserInAppDispatchUseCase findUserInAppDispatchUseCase, SaveUserInAppDispatchUseCase saveUserInAppDispatchUseCase, ClearUserInAppDispatchUseCase clearUserInAppDispatchUseCase) {
        getDispatchAreaListUseCase.getClass();
        findDispatchForPhoneUseCase.getClass();
        findUserInAppDispatchUseCase.getClass();
        saveUserInAppDispatchUseCase.getClass();
        clearUserInAppDispatchUseCase.getClass();
        this.f49893a = getDispatchAreaListUseCase;
        this.f49894b = findDispatchForPhoneUseCase;
        this.f49895c = findUserInAppDispatchUseCase;
        this.d = saveUserInAppDispatchUseCase;
        this.f49896e = clearUserInAppDispatchUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:39:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:45:0x00de  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:48:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:51:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:52:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:54:0x0100  */
    /* JADX WARN: Code duplicated, block: B:59:0x0115  */
    /* JADX WARN: Code duplicated, block: B:61:0x0118  */
    /* JADX WARN: Code duplicated, block: B:63:0x0120  */
    /* JADX WARN: Code duplicated, block: B:68:0x0132  */
    /* JADX WARN: Code duplicated, block: B:71:0x013f  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x010c, code lost:
    
        if (r6.a(r9, r0) == r1) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x012c, code lost:
    
        if (r9.f49896e.a(r0) == r1) goto L70;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.coroutines.jvm.internal.ContinuationImpl r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.dispatch.DetermineUserInAppDispatchStatusUseCase.a(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
