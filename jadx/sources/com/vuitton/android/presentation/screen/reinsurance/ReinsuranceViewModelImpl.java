package com.vuitton.android.presentation.screen.reinsurance;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.usecase.products.GetReinsuranceUseCase;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.product.ReinsurancePageType;
import com.vuitton.foundation.model.domain.model.product.universal.PackagingVariation;
import defpackage.fc;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\t\nB\u0019\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/usecase/products/GetReinsuranceUseCase;", "getReinsuranceUseCase", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/products/GetReinsuranceUseCase;)V", "Companion", "ReinsuranceState", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ReinsuranceViewModelImpl extends ViewModel implements ReinsuranceViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f63417a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetReinsuranceUseCase f63418b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableStateFlow f63419c;
    public final StateFlow d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableStateFlow f63420e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final StateFlow f63421f;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$Companion;", "", "", "IDENTIFIER_PACKAGING", "Ljava/lang/String;", "TAG", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState;", "", "Loaded", "Error", "Loading", "Empty", "Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState$Empty;", "Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState$Error;", "Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState$Loaded;", "Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState$Loading;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class ReinsuranceState {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState$Empty;", "Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Empty extends ReinsuranceState {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final Empty f63422a = new Empty(null);

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof Empty);
            }

            public final int hashCode() {
                return -961166316;
            }

            public final String toString() {
                return "Empty";
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState$Error;", "Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Error extends ReinsuranceState {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f63423a;

            public Error(String str) {
                super(null);
                this.f63423a = str;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Error) && Intrinsics.c(this.f63423a, ((Error) obj).f63423a);
            }

            public final int hashCode() {
                String str = this.f63423a;
                if (str == null) {
                    return 0;
                }
                return str.hashCode();
            }

            public final String toString() {
                return fc.h("Error(message=", this.f63423a, ")");
            }
        }

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState$Loaded;", "Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState;", "Lkotlinx/collections/immutable/ImmutableList;", "Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;", "reinsuranceList", "<init>", "(Lkotlinx/collections/immutable/ImmutableList;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Loaded extends ReinsuranceState {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final ImmutableList f63424a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Loaded(ImmutableList<ReinsuranceUiModel> immutableList) {
                super(null);
                immutableList.getClass();
                this.f63424a = immutableList;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Loaded) && Intrinsics.c(this.f63424a, ((Loaded) obj).f63424a);
            }

            public final int hashCode() {
                return this.f63424a.hashCode();
            }

            public final String toString() {
                return "Loaded(reinsuranceList=" + this.f63424a + ")";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState$Loading;", "Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Loading extends ReinsuranceState {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final Loading f63425a = new Loading(null);

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof Loading);
            }

            public final int hashCode() {
                return 1697614403;
            }

            public final String toString() {
                return "Loading";
            }
        }

        public ReinsuranceState(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public ReinsuranceViewModelImpl(Logger logger, GetReinsuranceUseCase getReinsuranceUseCase) {
        logger.getClass();
        getReinsuranceUseCase.getClass();
        this.f63417a = logger;
        this.f63418b = getReinsuranceUseCase;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(ReinsuranceState.Empty.f63422a);
        this.f63419c = mutableStateFlowA;
        this.d = FlowKt.b(mutableStateFlowA);
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(null);
        this.f63420e = mutableStateFlowA2;
        this.f63421f = FlowKt.b(mutableStateFlowA2);
    }

    public static final ReinsuranceUiModel yc(ReinsuranceViewModelImpl reinsuranceViewModelImpl, ReinsuranceUiModel reinsuranceUiModel, boolean z) {
        String lowerCase;
        Object obj = null;
        if ((reinsuranceUiModel != null ? reinsuranceUiModel.f63440f : null) == null || !z) {
            return reinsuranceUiModel;
        }
        for (Object obj2 : reinsuranceUiModel.f63440f) {
            String str = ((ReinsuranceUiModel) obj2).g;
            if (str != null) {
                Locale locale = Locale.ROOT;
                locale.getClass();
                lowerCase = str.toLowerCase(locale);
                lowerCase.getClass();
            } else {
                lowerCase = null;
            }
            String value = PackagingVariation.BABY.getValue();
            Locale locale2 = Locale.ROOT;
            locale2.getClass();
            String lowerCase2 = value.toLowerCase(locale2);
            lowerCase2.getClass();
            if (Intrinsics.c(lowerCase, lowerCase2)) {
                obj = obj2;
                break;
            }
        }
        ReinsuranceUiModel reinsuranceUiModel2 = (ReinsuranceUiModel) obj;
        return reinsuranceUiModel2 == null ? reinsuranceUiModel : reinsuranceUiModel2;
    }

    public static final Pair zc(ReinsuranceViewModelImpl reinsuranceViewModelImpl, List list) {
        Object next;
        String lowerCase;
        List list2 = list;
        Iterator it = list2.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            String identifier = ((ReinsuranceUiModel) next).f63436a.getIdentifier();
            Locale locale = Locale.ROOT;
            locale.getClass();
            lowerCase = identifier.toLowerCase(locale);
            lowerCase.getClass();
        } while (!lowerCase.equals("packaging"));
        ReinsuranceUiModel reinsuranceUiModel = (ReinsuranceUiModel) next;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list2) {
            String identifier2 = ((ReinsuranceUiModel) obj).f63436a.getIdentifier();
            Locale locale2 = Locale.ROOT;
            locale2.getClass();
            String lowerCase2 = identifier2.toLowerCase(locale2);
            lowerCase2.getClass();
            if (!lowerCase2.equals("packaging")) {
                arrayList.add(obj);
            }
        }
        return new Pair(arrayList, reinsuranceUiModel);
    }

    @Override // com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModel
    /* JADX INFO: renamed from: f3, reason: from getter */
    public final StateFlow getF63421f() {
        return this.f63421f;
    }

    @Override // com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModel
    /* JADX INFO: renamed from: r7, reason: from getter */
    public final StateFlow getD() {
        return this.d;
    }

    @Override // com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModel
    public final void w5(boolean z, ReinsurancePageType reinsurancePageType) {
        reinsurancePageType.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new ReinsuranceViewModelImpl$getReinsurance$1(this, reinsurancePageType, z, null), 3);
    }
}
