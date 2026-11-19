package com.vuitton.android.presentation.screen.account.myinformation;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.navigation3.runtime.NavBackStack;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationRoute;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel;
import com.vuitton.android.presentation.screen.account.myinformation.components.SeeMyInfoComposableKt;
import com.vuitton.android.presentation.screen.account.myinformation.components.edition.EditMyInfoComposableKt;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInfoTrackingUiModel;
import defpackage.sd0;
import defpackage.x0;
import defpackage.y0;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class b implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f52587b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MyInformationViewModel f52588c;
    public final /* synthetic */ NavBackStack d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f52589e;

    public /* synthetic */ b(MyInformationViewModel myInformationViewModel, Function0 function0, NavBackStack navBackStack) {
        this.f52587b = 0;
        this.f52588c = myInformationViewModel;
        this.f52589e = function0;
        this.d = navBackStack;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        final MyInformationViewModel myInformationViewModel;
        Object obj4;
        MyInformationViewModel myInformationViewModel2;
        MyInformationViewModel myInformationViewModel3;
        MyInformationViewModel myInformationViewModel4;
        int i2 = this.f52587b;
        Function0 function0 = this.f52589e;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        final NavBackStack navBackStack = this.d;
        final int i3 = 1;
        boolean z = false;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((MyInformationRoute.MyInfo) obj).getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    MyInformationViewModel myInformationViewModel5 = this.f52588c;
                    boolean zY = composer.y(myInformationViewModel5);
                    Object objX = composer.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        myInformationViewModel = myInformationViewModel5;
                        MyInformationNavDisplayKt$MyInformationNavDisplay$1$1$1$1 myInformationNavDisplayKt$MyInformationNavDisplay$1$1$1$1 = new MyInformationNavDisplayKt$MyInformationNavDisplay$1$1$1$1(0, myInformationViewModel, MyInformationViewModel.class, "logoutUser", "logoutUser()V", 0);
                        composer.q(myInformationNavDisplayKt$MyInformationNavDisplay$1$1$1$1);
                        objX = myInformationNavDisplayKt$MyInformationNavDisplay$1$1$1$1;
                    } else {
                        myInformationViewModel = myInformationViewModel5;
                    }
                    Function0 function1 = (Function0) ((KFunction) objX);
                    boolean zY2 = composer.y(myInformationViewModel) | composer.y(navBackStack);
                    Object objX2 = composer.x();
                    Object obj5 = objX2;
                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                        final int i4 = z ? 1 : 0;
                        Function0 function2 = new Function0() { // from class: td0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i5 = i4;
                                MyInfoTrackingUiModel.EditProfileEvent editProfileEvent = MyInfoTrackingUiModel.EditProfileEvent.f52651a;
                                NavBackStack navBackStack2 = navBackStack;
                                MyInformationViewModel myInformationViewModel6 = myInformationViewModel;
                                switch (i5) {
                                    case 0:
                                        myInformationViewModel6.m5(editProfileEvent);
                                        navBackStack2.a(MyInformationRoute.EditMyInfo.INSTANCE);
                                        break;
                                    default:
                                        myInformationViewModel6.m5(editProfileEvent);
                                        navBackStack2.a(MyInformationRoute.EditPassword.INSTANCE);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer.q(function2);
                        obj5 = function2;
                    }
                    Function0 function3 = (Function0) obj5;
                    boolean zY3 = composer.y(myInformationViewModel) | composer.y(navBackStack);
                    Object objX3 = composer.x();
                    Object obj6 = objX3;
                    if (zY3 || objX3 == composer$Companion$Empty$1) {
                        Function0 function4 = new Function0() { // from class: td0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i5 = i3;
                                MyInfoTrackingUiModel.EditProfileEvent editProfileEvent = MyInfoTrackingUiModel.EditProfileEvent.f52651a;
                                NavBackStack navBackStack2 = navBackStack;
                                MyInformationViewModel myInformationViewModel6 = myInformationViewModel;
                                switch (i5) {
                                    case 0:
                                        myInformationViewModel6.m5(editProfileEvent);
                                        navBackStack2.a(MyInformationRoute.EditMyInfo.INSTANCE);
                                        break;
                                    default:
                                        myInformationViewModel6.m5(editProfileEvent);
                                        navBackStack2.a(MyInformationRoute.EditPassword.INSTANCE);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer.q(function4);
                        obj6 = function4;
                    }
                    Function0 function5 = (Function0) obj6;
                    boolean zY4 = composer.y(navBackStack);
                    Object objX4 = composer.x();
                    Object obj7 = objX4;
                    if (zY4 || objX4 == composer$Companion$Empty$1) {
                        x0 x0Var = new x0(navBackStack, 7);
                        composer.q(x0Var);
                        obj7 = x0Var;
                    }
                    Function0 function6 = (Function0) obj7;
                    boolean zY5 = composer.y(navBackStack);
                    Object objX5 = composer.x();
                    Object obj8 = objX5;
                    if (zY5 || objX5 == composer$Companion$Empty$1) {
                        x0 x0Var2 = new x0(navBackStack, 8);
                        composer.q(x0Var2);
                        obj8 = x0Var2;
                    }
                    SeeMyInfoComposableKt.a(myInformationViewModel, this.f52589e, function1, function3, function5, function6, (Function0) obj8, composer, 0);
                } else {
                    composer.D();
                }
                break;
            case 1:
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((MyInformationRoute.EditMyInfo) obj).getClass();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    String strC = StringResources_androidKt.c(composer2, R.string.content_description_edit_profile);
                    MyInformationViewModel myInformationViewModel6 = this.f52588c;
                    boolean zY6 = composer2.y(myInformationViewModel6);
                    Object objX6 = composer2.x();
                    if (zY6 || objX6 == composer$Companion$Empty$1) {
                        obj4 = objX6;
                        sd0 sd0Var = new sd0(myInformationViewModel6, 0);
                        composer2.q(sd0Var);
                        obj4 = sd0Var;
                    }
                    Function0 function7 = (Function0) obj4;
                    boolean zY7 = composer2.y(navBackStack) | composer2.K(function0);
                    Object objX7 = composer2.x();
                    Object obj9 = objX7;
                    if (zY7 || objX7 == composer$Companion$Empty$1) {
                        y0 y0Var = new y0(navBackStack, function0, 14);
                        composer2.q(y0Var);
                        obj9 = y0Var;
                    }
                    Function0 function8 = (Function0) obj9;
                    boolean zY8 = composer2.y(myInformationViewModel6);
                    Object objX8 = composer2.x();
                    if (zY8 || objX8 == composer$Companion$Empty$1) {
                        myInformationViewModel2 = myInformationViewModel6;
                        MyInformationNavDisplayKt$MyInformationNavDisplay$1$2$3$1 myInformationNavDisplayKt$MyInformationNavDisplay$1$2$3$1 = new MyInformationNavDisplayKt$MyInformationNavDisplay$1$2$3$1(0, myInformationViewModel2, MyInformationViewModel.class, "editMyInfo", "editMyInfo()V", 0);
                        composer2.q(myInformationNavDisplayKt$MyInformationNavDisplay$1$2$3$1);
                        objX8 = myInformationNavDisplayKt$MyInformationNavDisplay$1$2$3$1;
                    } else {
                        myInformationViewModel2 = myInformationViewModel6;
                    }
                    EditMyInfoComposableKt.a(myInformationViewModel2, strC, function7, function8, (Function0) ((KFunction) objX8), composer2, 0);
                } else {
                    composer2.D();
                }
                break;
            case 2:
                Composer composer3 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                ((MyInformationRoute.EditTaxId) obj).getClass();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 17) != 16)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    String strC2 = StringResources_androidKt.c(composer3, R.string.mylv_myprofile_myinfos_logininformation_edittaxid_title);
                    MyInformationViewModel myInformationViewModel7 = this.f52588c;
                    boolean zY9 = composer3.y(myInformationViewModel7);
                    Object objX9 = composer3.x();
                    if (zY9 || objX9 == composer$Companion$Empty$1) {
                        MyInformationNavDisplayKt$MyInformationNavDisplay$1$4$1$1 myInformationNavDisplayKt$MyInformationNavDisplay$1$4$1$1 = new MyInformationNavDisplayKt$MyInformationNavDisplay$1$4$1$1(0, myInformationViewModel7, MyInformationViewModel.class, "loadTaxIdEditForm", "loadTaxIdEditForm()V", 0);
                        composer3.q(myInformationNavDisplayKt$MyInformationNavDisplay$1$4$1$1);
                        objX9 = myInformationNavDisplayKt$MyInformationNavDisplay$1$4$1$1;
                    }
                    Function0 function9 = (Function0) ((KFunction) objX9);
                    boolean zY10 = composer3.y(navBackStack) | composer3.K(function0);
                    Object objX10 = composer3.x();
                    if (zY10 || objX10 == composer$Companion$Empty$1) {
                        objX10 = new y0(navBackStack, function0, 15);
                        composer3.q(objX10);
                    }
                    Function0 function10 = (Function0) objX10;
                    boolean zY11 = composer3.y(myInformationViewModel7);
                    Object objX11 = composer3.x();
                    if (zY11 || objX11 == composer$Companion$Empty$1) {
                        myInformationViewModel3 = myInformationViewModel7;
                        MyInformationNavDisplayKt$MyInformationNavDisplay$1$4$3$1 myInformationNavDisplayKt$MyInformationNavDisplay$1$4$3$1 = new MyInformationNavDisplayKt$MyInformationNavDisplay$1$4$3$1(0, myInformationViewModel3, MyInformationViewModel.class, "editTaxId", "editTaxId()V", 0);
                        composer3.q(myInformationNavDisplayKt$MyInformationNavDisplay$1$4$3$1);
                        objX11 = myInformationNavDisplayKt$MyInformationNavDisplay$1$4$3$1;
                    } else {
                        myInformationViewModel3 = myInformationViewModel7;
                    }
                    EditMyInfoComposableKt.a(myInformationViewModel3, strC2, function9, function10, (Function0) ((KFunction) objX11), composer3, 0);
                } else {
                    composer3.D();
                }
                break;
            default:
                Composer composer4 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                ((MyInformationRoute.EditBranchId) obj).getClass();
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 17) != 16)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    String strC3 = StringResources_androidKt.c(composer4, R.string.mylv_myprofile_myinfos_logininformation_editbranchid_title);
                    MyInformationViewModel myInformationViewModel8 = this.f52588c;
                    boolean zY12 = composer4.y(myInformationViewModel8);
                    Object objX12 = composer4.x();
                    if (zY12 || objX12 == composer$Companion$Empty$1) {
                        MyInformationNavDisplayKt$MyInformationNavDisplay$1$5$1$1 myInformationNavDisplayKt$MyInformationNavDisplay$1$5$1$1 = new MyInformationNavDisplayKt$MyInformationNavDisplay$1$5$1$1(0, myInformationViewModel8, MyInformationViewModel.class, "loadBranchIdEditForm", "loadBranchIdEditForm()V", 0);
                        composer4.q(myInformationNavDisplayKt$MyInformationNavDisplay$1$5$1$1);
                        objX12 = myInformationNavDisplayKt$MyInformationNavDisplay$1$5$1$1;
                    }
                    Function0 function11 = (Function0) ((KFunction) objX12);
                    boolean zY13 = composer4.y(navBackStack) | composer4.K(function0);
                    Object objX13 = composer4.x();
                    if (zY13 || objX13 == composer$Companion$Empty$1) {
                        objX13 = new y0(navBackStack, function0, 12);
                        composer4.q(objX13);
                    }
                    Function0 function12 = (Function0) objX13;
                    boolean zY14 = composer4.y(myInformationViewModel8);
                    Object objX14 = composer4.x();
                    if (zY14 || objX14 == composer$Companion$Empty$1) {
                        myInformationViewModel4 = myInformationViewModel8;
                        MyInformationNavDisplayKt$MyInformationNavDisplay$1$5$3$1 myInformationNavDisplayKt$MyInformationNavDisplay$1$5$3$1 = new MyInformationNavDisplayKt$MyInformationNavDisplay$1$5$3$1(0, myInformationViewModel4, MyInformationViewModel.class, "editBranchId", "editBranchId()V", 0);
                        composer4.q(myInformationNavDisplayKt$MyInformationNavDisplay$1$5$3$1);
                        objX14 = myInformationNavDisplayKt$MyInformationNavDisplay$1$5$3$1;
                    } else {
                        myInformationViewModel4 = myInformationViewModel8;
                    }
                    EditMyInfoComposableKt.a(myInformationViewModel4, strC3, function11, function12, (Function0) ((KFunction) objX14), composer4, 0);
                } else {
                    composer4.D();
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ b(MyInformationViewModel myInformationViewModel, NavBackStack navBackStack, Function0 function0, int i2) {
        this.f52587b = i2;
        this.f52588c = myInformationViewModel;
        this.d = navBackStack;
        this.f52589e = function0;
    }
}
