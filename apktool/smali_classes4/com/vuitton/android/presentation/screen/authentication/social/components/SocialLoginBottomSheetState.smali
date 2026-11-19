.class public final Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u007f\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u000e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;",
        "",
        "Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;",
        "viewModel",
        "Landroidx/compose/runtime/State;",
        "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;",
        "viewState",
        "Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;",
        "bottomSheetState",
        "Landroidx/compose/runtime/MutableState;",
        "Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType;",
        "currentBottomSheet",
        "Lkotlin/Function0;",
        "",
        "onNativeLogin",
        "onNativeRegister",
        "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;",
        "origin",
        "Landroidx/compose/material3/SnackbarHostState;",
        "snackbarHostState",
        "onLogin",
        "onRegister",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;Landroidx/compose/runtime/State;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;

.field public final b:Landroidx/compose/runtime/State;

.field public final c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final d:Landroidx/compose/runtime/MutableState;

.field public final e:Lkotlin/jvm/functions/Function0;

.field public final f:Lkotlin/jvm/functions/Function0;

.field public final g:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

.field public final h:Landroidx/compose/material3/SnackbarHostState;

.field public final i:Lkotlin/jvm/functions/Function0;

.field public final j:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;Landroidx/compose/runtime/State;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;",
            "Landroidx/compose/runtime/State<",
            "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;",
            ">;",
            "Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;",
            "Landroidx/compose/material3/SnackbarHostState;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->a:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->b:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->d:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->e:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->f:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->g:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->h:Landroidx/compose/material3/SnackbarHostState;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->i:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->j:Lkotlin/jvm/functions/Function0;

    return-void
.end method
