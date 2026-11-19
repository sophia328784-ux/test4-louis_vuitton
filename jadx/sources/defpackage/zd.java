package defpackage;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableScatterMap;
import androidx.compose.foundation.ScrollNode;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.LazyListMeasureResult;
import androidx.compose.foundation.lazy.LazyListPrefetchResultScopeImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionImpl;
import androidx.compose.runtime.DerivedState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.collection.ScopeMap;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.semantics.CollectionItemInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.presentation.chat.ChatAttachable;
import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.contact.compose.ContactUsMethod;
import com.vuitton.android.presentation.link.navigation.ContactUsNavigator;
import com.vuitton.android.presentation.screen.cart.NativeCartActivity;
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffFragment;
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormFragment;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTracker;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackingUiModel;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackingUiModelKt;
import com.vuitton.android.presentation.screen.orders.models.CategoryOptionUiModel;
import com.vuitton.android.presentation.screen.orders.models.ProductExchangeCategoryUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.LookUiModel;
import com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressBffFragment;
import com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressFragment;
import com.vuitton.android.presentation.screen.repairs.detail.RepairDetailBffFragment;
import com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment;
import com.vuitton.android.presentation.screen.repairs.detail.RepairPaymentFailedFragment;
import com.vuitton.android.presentation.screen.search.models.SuggestionItemUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class zd implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81599b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f81600c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f81601e;

    public /* synthetic */ zd(Function1 function1, int i2, LazyListMeasureResult lazyListMeasureResult) {
        this.f81599b = 6;
        this.f81601e = function1;
        this.f81600c = i2;
        this.d = lazyListMeasureResult;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Composition composition;
        int i2;
        Composition composition2;
        int i3;
        int i4;
        int i5 = this.f81599b;
        int i6 = 1;
        int i7 = 0;
        int i8 = this.f81600c;
        Object obj2 = this.f81601e;
        Object obj3 = this.d;
        switch (i5) {
            case 0:
                LookUiModel lookUiModel = (LookUiModel) obj3;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, lookUiModel.d + "  " + lookUiModel.f62167c);
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, 0);
                SemanticsPropertiesKt.g(semanticsPropertyReceiver, new CollectionItemInfo(0, 1, i8, 1));
                SemanticsPropertiesKt.e(semanticsPropertyReceiver, null, new l0((Function1) obj2, lookUiModel, 22));
                return Unit.f71739a;
            case 1:
                ((CarouselSItemUiModel) obj).getClass();
                ((Function2) obj3).invoke((CarouselSItemUiModel) obj2, Integer.valueOf(i8));
                return Unit.f71739a;
            case 2:
                Placeable placeable = (Placeable) obj3;
                Placeable placeable2 = (Placeable) obj2;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                placementScope.getClass();
                Placeable.PlacementScope.y(placementScope, placeable, 0, 0);
                Placeable.PlacementScope.y(placementScope, placeable2, (i8 - placeable2.f9548b) / 2, placeable.f9549c - (placeable2.f9549c / 2));
                return Unit.f71739a;
            case 3:
                DistantRepairFormBffFragment distantRepairFormBffFragment = (DistantRepairFormBffFragment) obj3;
                ContactUsMethod contactUsMethod = (ContactUsMethod) obj;
                DistantRepairFormBffFragment.Companion companion = DistantRepairFormBffFragment.M;
                contactUsMethod.getClass();
                int iIntValue = ((Number) ((MutableState) obj2).getF10755b()).intValue();
                ContactUsNavigator contactUsNavigator = distantRepairFormBffFragment.I;
                if (contactUsNavigator == null) {
                    Intrinsics.h("contactUsNavigator");
                    throw null;
                }
                FragmentActivity fragmentActivityRequireActivity = distantRepairFormBffFragment.requireActivity();
                fragmentActivityRequireActivity.getClass();
                ChatAttachable chatAttachable = distantRepairFormBffFragment.J;
                if (chatAttachable != null) {
                    contactUsNavigator.a(fragmentActivityRequireActivity, contactUsMethod, iIntValue, this.f81600c, chatAttachable);
                    return Unit.f71739a;
                }
                Intrinsics.h("chatAttachable");
                throw null;
            case 4:
                DistantRepairFormFragment distantRepairFormFragment = (DistantRepairFormFragment) obj3;
                ContactUsMethod contactUsMethod2 = (ContactUsMethod) obj;
                DistantRepairFormFragment.Companion companion2 = DistantRepairFormFragment.M;
                contactUsMethod2.getClass();
                int iIntValue2 = ((Number) ((MutableState) obj2).getF10755b()).intValue();
                ContactUsNavigator contactUsNavigator2 = distantRepairFormFragment.I;
                if (contactUsNavigator2 == null) {
                    Intrinsics.h("contactUsNavigator");
                    throw null;
                }
                FragmentActivity fragmentActivityRequireActivity2 = distantRepairFormFragment.requireActivity();
                fragmentActivityRequireActivity2.getClass();
                ChatAttachable chatAttachable2 = distantRepairFormFragment.J;
                if (chatAttachable2 != null) {
                    contactUsNavigator2.a(fragmentActivityRequireActivity2, contactUsMethod2, iIntValue2, this.f81600c, chatAttachable2);
                    return Unit.f71739a;
                }
                Intrinsics.h("chatAttachable");
                throw null;
            case 5:
                FeedTracker feedTracker = (FeedTracker) obj3;
                int iIntValue3 = ((Integer) obj).intValue();
                EditorialModuleUiModel.SlideShowUiModel slideShowUiModel = (EditorialModuleUiModel.SlideShowUiModel) ((EditorialModuleUiModel) obj2);
                String str = slideShowUiModel.f50852a;
                int size = slideShowUiModel.f50854c.size();
                feedTracker.getClass();
                str.getClass();
                feedTracker.f57933a.a(FeedTrackingUiModelKt.a(new FeedTrackingUiModel.OnSlideShowPageChangeEvent(str, i8 + 1, iIntValue3, size)));
                return Unit.f71739a;
            case 6:
                Function1 function1 = (Function1) obj2;
                LazyListMeasureResult lazyListMeasureResult = (LazyListMeasureResult) obj3;
                LazyLayoutPrefetchState.PrefetchResultScope prefetchResultScope = (LazyLayoutPrefetchState.PrefetchResultScope) obj;
                if (function1 != null) {
                    int iB = prefetchResultScope.b();
                    int iA = 0;
                    for (int i9 = 0; i9 < iB; i9++) {
                        iA += (int) (lazyListMeasureResult.p == Orientation.Vertical ? prefetchResultScope.a(i9) & BodyPartID.bodyIdMax : prefetchResultScope.a(i9) >> 32);
                    }
                    function1.invoke(new LazyListPrefetchResultScopeImpl(i8, iA));
                }
                return Unit.f71739a;
            case 7:
                NativeCartActivity nativeCartActivity = (NativeCartActivity) obj3;
                MutableState mutableState = (MutableState) obj2;
                ContactUsMethod contactUsMethod3 = (ContactUsMethod) obj;
                NativeCartActivity.Companion companion3 = NativeCartActivity.w;
                contactUsMethod3.getClass();
                ContactUsNavigator contactUsNavigator3 = nativeCartActivity.r;
                if (contactUsNavigator3 == null) {
                    Intrinsics.h("contactUsNavigator");
                    throw null;
                }
                int iIntValue4 = ((Number) mutableState.getF10755b()).intValue();
                ChatAttachable chatAttachable3 = nativeCartActivity.p;
                if (chatAttachable3 != null) {
                    contactUsNavigator3.a(nativeCartActivity, contactUsMethod3, iIntValue4, this.f81600c, chatAttachable3);
                    return Unit.f71739a;
                }
                Intrinsics.h("chatAttachable");
                throw null;
            case 8:
                CategoryOptionUiModel categoryOptionUiModel = (CategoryOptionUiModel) obj;
                categoryOptionUiModel.getClass();
                ((Function3) obj3).A((ProductExchangeCategoryUiModel) obj2, categoryOptionUiModel, Integer.valueOf(i8));
                return Unit.f71739a;
            case 9:
                RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) obj3;
                MutableObjectIntMap mutableObjectIntMap = (MutableObjectIntMap) obj2;
                Composition composition3 = (Composition) obj;
                if (recomposeScopeImpl.f8079e == i8 && Intrinsics.c(mutableObjectIntMap, recomposeScopeImpl.f8080f) && (composition3 instanceof CompositionImpl)) {
                    long[] jArr = mutableObjectIntMap.f3340a;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i10 = 0;
                        while (true) {
                            long j2 = jArr[i10];
                            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i11 = 8;
                                int i12 = 8 - ((~(i10 - length)) >>> 31);
                                int i13 = i7;
                                while (i13 < i12) {
                                    if ((255 & j2) < 128) {
                                        int i14 = (i10 << 3) + i13;
                                        Object obj4 = mutableObjectIntMap.f3341b[i14];
                                        i3 = i6;
                                        int i15 = mutableObjectIntMap.f3342c[i14] != i8 ? i3 : i7;
                                        if (i15 != 0) {
                                            CompositionImpl compositionImpl = (CompositionImpl) composition3;
                                            i4 = i11;
                                            MutableScatterMap mutableScatterMap = compositionImpl.f7951h;
                                            ScopeMap.b(mutableScatterMap, obj4, recomposeScopeImpl);
                                            composition2 = composition3;
                                            if (obj4 instanceof DerivedState) {
                                                DerivedState derivedState = (DerivedState) obj4;
                                                if (!mutableScatterMap.c(derivedState)) {
                                                    ScopeMap.c(compositionImpl.f7954k, derivedState);
                                                }
                                                MutableScatterMap mutableScatterMap2 = recomposeScopeImpl.g;
                                                if (mutableScatterMap2 != null) {
                                                    mutableScatterMap2.m(obj4);
                                                }
                                            }
                                        } else {
                                            composition2 = composition3;
                                            i4 = i11;
                                        }
                                        if (i15 != 0) {
                                            mutableObjectIntMap.g(i14);
                                        }
                                    } else {
                                        composition2 = composition3;
                                        i3 = i6;
                                        i4 = i11;
                                    }
                                    j2 >>= i4;
                                    i13++;
                                    i11 = i4;
                                    composition3 = composition2;
                                    i6 = i3;
                                    i7 = 0;
                                }
                                composition = composition3;
                                i2 = i6;
                                if (i12 == i11) {
                                }
                            } else {
                                composition = composition3;
                                i2 = i6;
                            }
                            if (i10 != length) {
                                i10++;
                                composition3 = composition;
                                i6 = i2;
                                i7 = 0;
                            }
                        }
                    }
                }
                return Unit.f71739a;
            case 10:
                RepairConfirmAddressBffFragment repairConfirmAddressBffFragment = (RepairConfirmAddressBffFragment) obj3;
                ContactUsMethod contactUsMethod4 = (ContactUsMethod) obj;
                RepairConfirmAddressBffFragment.Companion companion4 = RepairConfirmAddressBffFragment.M;
                contactUsMethod4.getClass();
                int iIntValue5 = ((Number) ((MutableState) obj2).getF10755b()).intValue();
                ContactUsNavigator contactUsNavigator4 = repairConfirmAddressBffFragment.I;
                if (contactUsNavigator4 == null) {
                    Intrinsics.h("contactUsNavigator");
                    throw null;
                }
                FragmentActivity fragmentActivityRequireActivity3 = repairConfirmAddressBffFragment.requireActivity();
                fragmentActivityRequireActivity3.getClass();
                ChatAttachable chatAttachable4 = repairConfirmAddressBffFragment.J;
                if (chatAttachable4 != null) {
                    contactUsNavigator4.a(fragmentActivityRequireActivity3, contactUsMethod4, iIntValue5, this.f81600c, chatAttachable4);
                    return Unit.f71739a;
                }
                Intrinsics.h("chatAttachable");
                throw null;
            case 11:
                RepairConfirmAddressFragment repairConfirmAddressFragment = (RepairConfirmAddressFragment) obj3;
                ContactUsMethod contactUsMethod5 = (ContactUsMethod) obj;
                RepairConfirmAddressFragment.Companion companion5 = RepairConfirmAddressFragment.M;
                contactUsMethod5.getClass();
                int iIntValue6 = ((Number) ((MutableState) obj2).getF10755b()).intValue();
                ContactUsNavigator contactUsNavigator5 = repairConfirmAddressFragment.I;
                if (contactUsNavigator5 == null) {
                    Intrinsics.h("contactUsNavigator");
                    throw null;
                }
                FragmentActivity fragmentActivityRequireActivity4 = repairConfirmAddressFragment.requireActivity();
                fragmentActivityRequireActivity4.getClass();
                ChatAttachable chatAttachable5 = repairConfirmAddressFragment.J;
                if (chatAttachable5 != null) {
                    contactUsNavigator5.a(fragmentActivityRequireActivity4, contactUsMethod5, iIntValue6, this.f81600c, chatAttachable5);
                    return Unit.f71739a;
                }
                Intrinsics.h("chatAttachable");
                throw null;
            case 12:
                RepairDetailBffFragment repairDetailBffFragment = (RepairDetailBffFragment) obj3;
                ContactUsMethod contactUsMethod6 = (ContactUsMethod) obj;
                RepairDetailBffFragment.Companion companion6 = RepairDetailBffFragment.P;
                contactUsMethod6.getClass();
                int iIntValue7 = ((Number) ((MutableState) obj2).getF10755b()).intValue();
                ContactUsNavigator contactUsNavigator6 = repairDetailBffFragment.K;
                if (contactUsNavigator6 == null) {
                    Intrinsics.h("contactUsNavigator");
                    throw null;
                }
                FragmentActivity fragmentActivityRequireActivity5 = repairDetailBffFragment.requireActivity();
                fragmentActivityRequireActivity5.getClass();
                ChatAttachable chatAttachable6 = repairDetailBffFragment.L;
                if (chatAttachable6 != null) {
                    contactUsNavigator6.a(fragmentActivityRequireActivity5, contactUsMethod6, iIntValue7, this.f81600c, chatAttachable6);
                    return Unit.f71739a;
                }
                Intrinsics.h("chatAttachable");
                throw null;
            case 13:
                RepairDetailsFragment repairDetailsFragment = (RepairDetailsFragment) obj3;
                ContactUsMethod contactUsMethod7 = (ContactUsMethod) obj;
                RepairDetailsFragment.Companion companion7 = RepairDetailsFragment.P;
                contactUsMethod7.getClass();
                int iIntValue8 = ((Number) ((MutableState) obj2).getF10755b()).intValue();
                ContactUsNavigator contactUsNavigator7 = repairDetailsFragment.K;
                if (contactUsNavigator7 == null) {
                    Intrinsics.h("contactUsNavigator");
                    throw null;
                }
                FragmentActivity fragmentActivityRequireActivity6 = repairDetailsFragment.requireActivity();
                fragmentActivityRequireActivity6.getClass();
                ChatAttachable chatAttachable7 = repairDetailsFragment.L;
                if (chatAttachable7 != null) {
                    contactUsNavigator7.a(fragmentActivityRequireActivity6, contactUsMethod7, iIntValue8, this.f81600c, chatAttachable7);
                    return Unit.f71739a;
                }
                Intrinsics.h("chatAttachable");
                throw null;
            case 14:
                RepairPaymentFailedFragment repairPaymentFailedFragment = (RepairPaymentFailedFragment) obj3;
                ContactUsMethod contactUsMethod8 = (ContactUsMethod) obj;
                RepairPaymentFailedFragment.Companion companion8 = RepairPaymentFailedFragment.K;
                contactUsMethod8.getClass();
                int iIntValue9 = ((Number) ((MutableState) obj2).getF10755b()).intValue();
                ContactUsNavigator contactUsNavigator8 = repairPaymentFailedFragment.I;
                if (contactUsNavigator8 == null) {
                    Intrinsics.h("contactUsNavigator");
                    throw null;
                }
                FragmentActivity fragmentActivityRequireActivity7 = repairPaymentFailedFragment.requireActivity();
                fragmentActivityRequireActivity7.getClass();
                ChatAttachable chatAttachable8 = repairPaymentFailedFragment.J;
                if (chatAttachable8 != null) {
                    contactUsNavigator8.a(fragmentActivityRequireActivity7, contactUsMethod8, iIntValue9, this.f81600c, chatAttachable8);
                    return Unit.f71739a;
                }
                Intrinsics.h("chatAttachable");
                throw null;
            case 15:
                ScrollNode scrollNode = (ScrollNode) obj3;
                Placeable placeable3 = (Placeable) obj2;
                Placeable.PlacementScope placementScope2 = (Placeable.PlacementScope) obj;
                int iF = ((SnapshotMutableIntStateImpl) scrollNode.p.f4290a).f();
                if (iF < 0) {
                    iF = 0;
                }
                if (iF > i8) {
                    iF = i8;
                }
                int i16 = scrollNode.q ? iF - i8 : -iF;
                boolean z = scrollNode.r;
                int i17 = z ? 0 : i16;
                if (!z) {
                    i16 = 0;
                }
                placementScope2.f9552b = true;
                Placeable.PlacementScope.z(placementScope2, placeable3, i17, i16);
                placementScope2.f9552b = false;
                return Unit.f71739a;
            default:
                ((SuggestionItemUiModel) obj).getClass();
                ((Function2) obj3).invoke((SuggestionItemUiModel) obj2, Integer.valueOf(i8));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ zd(Object obj, Object obj2, int i2, int i3) {
        this.f81599b = i3;
        this.d = obj;
        this.f81601e = obj2;
        this.f81600c = i2;
    }

    public /* synthetic */ zd(Object obj, int i2, Object obj2, int i3) {
        this.f81599b = i3;
        this.d = obj;
        this.f81600c = i2;
        this.f81601e = obj2;
    }
}
