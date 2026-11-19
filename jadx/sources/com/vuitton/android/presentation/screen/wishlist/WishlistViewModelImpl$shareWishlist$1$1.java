package com.vuitton.android.presentation.screen.wishlist;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.snapshots.StateListIterator;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistItemUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistTrackingUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistUiModel;
import defpackage.md;
import java.util.ArrayList;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.wishlist.WishlistViewModelImpl$shareWishlist$1$1", f = "WishlistViewModelImpl.kt", l = {390}, m = "invokeSuspend", v = 2)
final class WishlistViewModelImpl$shareWishlist$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f65653b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WishlistViewModelImpl f65654c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f65655e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f65656f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WishlistViewModelImpl$shareWishlist$1$1(WishlistViewModelImpl wishlistViewModelImpl, String str, String str2, String str3, Continuation continuation) {
        super(2, continuation);
        this.f65654c = wishlistViewModelImpl;
        this.d = str;
        this.f65655e = str2;
        this.f65656f = str3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WishlistViewModelImpl$shareWishlist$1$1(this.f65654c, this.d, this.f65655e, this.f65656f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WishlistViewModelImpl$shareWishlist$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v1, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.vuitton.android.domain.usecase.wishlist.ShareWishlistContentUseCase] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ?? arrayList;
        Object objA;
        SnapshotStateList snapshotStateList;
        WishlistViewModelImpl wishlistViewModelImpl = this.f65654c;
        MutableStateFlow mutableStateFlow = wishlistViewModelImpl.z;
        MutableStateFlow mutableStateFlow2 = wishlistViewModelImpl.t;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f65653b;
        if (i2 == 0) {
            ResultKt.b(obj);
            mutableStateFlow2.setValue(Boolean.TRUE);
            ?? r7 = wishlistViewModelImpl.f65625k;
            WishlistUiModel wishlistUiModel = (WishlistUiModel) wishlistViewModelImpl.v.getValue();
            if (wishlistUiModel != null && (snapshotStateList = wishlistUiModel.f65755a) != null) {
                arrayList = new ArrayList(CollectionsKt.t(snapshotStateList, 10));
                ListIterator listIterator = snapshotStateList.listIterator();
                while (true) {
                    StateListIterator stateListIterator = (StateListIterator) listIterator;
                    if (!stateListIterator.hasNext()) {
                        break;
                    }
                    String str = ((WishlistItemUiModel) stateListIterator.next()).f65740b;
                    SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                    arrayList.add(str);
                }
            } else {
                arrayList = EmptyList.f71768b;
            }
            ?? r11 = arrayList;
            this.f65653b = 1;
            objA = r7.a(this.d, this.f65655e, this.f65656f, r11, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Throwable thA = Result.a(objA);
        if (thA == null) {
            Boolean bool = (Boolean) objA;
            bool.booleanValue();
            mutableStateFlow2.setValue(Boolean.FALSE);
            mutableStateFlow.setValue(new Result(bool));
            wishlistViewModelImpl.h1(WishlistTrackingUiModel.ShareWishlistSuccessEvent.f65750a);
            BuildersKt.c(ViewModelKt.a(wishlistViewModelImpl), null, null, new WishlistViewModelImpl$showSuccessNotification$1(wishlistViewModelImpl, R.string.mylv_mywishlists_sharewishlist_acknowledgment, null), 3);
        } else {
            mutableStateFlow2.setValue(Boolean.FALSE);
            mutableStateFlow.setValue(new Result(new Result.Failure(thA)));
            wishlistViewModelImpl.Ac(R.string.error_generic);
            wishlistViewModelImpl.f65618b.c("WishlistViewModelImpl", "Unable to share wishlist", thA);
        }
        return Unit.f71739a;
    }
}
