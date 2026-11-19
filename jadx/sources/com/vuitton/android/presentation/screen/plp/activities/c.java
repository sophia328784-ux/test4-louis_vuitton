package com.vuitton.android.presentation.screen.plp.activities;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import com.vuitton.android.presentation.screen.base.BaseActivity;
import com.vuitton.android.presentation.screen.plp.components.composables.PLPSimpleComposableKt;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPExclusiveViewModelImpl;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPSkusViewModelImpl;
import defpackage.ck;
import defpackage.hv0;
import defpackage.md;
import defpackage.rp0;
import defpackage.ss;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class c implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f62721b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BaseActivity f62722c;

    public /* synthetic */ c(BaseActivity baseActivity, int i2) {
        this.f62721b = i2;
        this.f62722c = baseActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f62721b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        BaseActivity baseActivity = this.f62722c;
        switch (i2) {
            case 0:
                ExclusivePLPActivity exclusivePLPActivity = (ExclusivePLPActivity) baseActivity;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                ExclusivePLPActivity.Companion companion = ExclusivePLPActivity.p;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer);
                    if (viewModelStoreOwnerA == null) {
                        md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                        return null;
                    }
                    PLPExclusiveViewModelImpl pLPExclusiveViewModelImpl = (PLPExclusiveViewModelImpl) ViewModelKt.a(Reflection.f71922a.b(PLPExclusiveViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer);
                    boolean zY = composer.y(exclusivePLPActivity);
                    Object objX = composer.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        ExclusivePLPActivity$onCreate$1$1$1$1$1 exclusivePLPActivity$onCreate$1$1$1$1$1 = new ExclusivePLPActivity$onCreate$1$1$1$1$1(0, exclusivePLPActivity, ExclusivePLPActivity.class, "finish", "finish()V", 0);
                        composer.q(exclusivePLPActivity$onCreate$1$1$1$1$1);
                        objX = exclusivePLPActivity$onCreate$1$1$1$1$1;
                    }
                    Function0 function0 = (Function0) ((KFunction) objX);
                    boolean zY2 = composer.y(exclusivePLPActivity);
                    Object objX2 = composer.x();
                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new ss(exclusivePLPActivity, 9);
                        composer.q(objX2);
                    }
                    Function0 function1 = (Function0) objX2;
                    boolean zY3 = composer.y(exclusivePLPActivity);
                    Object objX3 = composer.x();
                    if (zY3 || objX3 == composer$Companion$Empty$1) {
                        objX3 = new ck(exclusivePLPActivity, 22);
                        composer.q(objX3);
                    }
                    PLPSimpleComposableKt.a(pLPExclusiveViewModelImpl, null, function0, function1, (Function1) objX3, false, composer, 48, 32);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            default:
                SkusPLPActivity skusPLPActivity = (SkusPLPActivity) baseActivity;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                SkusPLPActivity.Companion companion2 = SkusPLPActivity.p;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    ViewModelStoreOwner viewModelStoreOwnerA2 = LocalViewModelStoreOwner.a(composer2);
                    if (viewModelStoreOwnerA2 == null) {
                        md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                        return null;
                    }
                    PLPSkusViewModelImpl pLPSkusViewModelImpl = (PLPSkusViewModelImpl) ViewModelKt.a(Reflection.f71922a.b(PLPSkusViewModelImpl.class), viewModelStoreOwnerA2, null, HiltViewModelKt.a(viewModelStoreOwnerA2, composer2), viewModelStoreOwnerA2 instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA2).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer2);
                    SavedStateHandle savedStateHandle = pLPSkusViewModelImpl.f63086c;
                    List list = (List) savedStateHandle.a("nav_arg_plp_slotted_sku_list");
                    if (list == null) {
                        list = EmptyList.f71768b;
                    }
                    String str = list.isEmpty() ? null : (String) savedStateHandle.a("nav_arg_plp_list_title");
                    Boolean bool = (Boolean) savedStateHandle.a("nav_arg_plp_is_most_purchased_with");
                    boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
                    boolean zY4 = composer2.y(skusPLPActivity);
                    Object objX4 = composer2.x();
                    if (zY4 || objX4 == composer$Companion$Empty$1) {
                        SkusPLPActivity$onCreate$1$1$1$1$1 skusPLPActivity$onCreate$1$1$1$1$1 = new SkusPLPActivity$onCreate$1$1$1$1$1(0, skusPLPActivity, SkusPLPActivity.class, "finish", "finish()V", 0);
                        composer2.q(skusPLPActivity$onCreate$1$1$1$1$1);
                        objX4 = skusPLPActivity$onCreate$1$1$1$1$1;
                    }
                    Function0 function2 = (Function0) ((KFunction) objX4);
                    boolean zY5 = composer2.y(skusPLPActivity);
                    Object objX5 = composer2.x();
                    if (zY5 || objX5 == composer$Companion$Empty$1) {
                        objX5 = new hv0(skusPLPActivity, 5);
                        composer2.q(objX5);
                    }
                    Function0 function3 = (Function0) objX5;
                    boolean zY6 = composer2.y(pLPSkusViewModelImpl) | composer2.y(skusPLPActivity);
                    Object objX6 = composer2.x();
                    if (zY6 || objX6 == composer$Companion$Empty$1) {
                        objX6 = new rp0(pLPSkusViewModelImpl, skusPLPActivity, 21);
                        composer2.q(objX6);
                    }
                    PLPSimpleComposableKt.a(pLPSkusViewModelImpl, str, function2, function3, (Function1) objX6, zBooleanValue, composer2, 0, 0);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
        }
    }
}
