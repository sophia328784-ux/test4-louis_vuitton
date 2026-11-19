.class public final Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001\u001eB\u00ab\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0014\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0016\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;",
        "",
        "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;",
        "credentialsUiModel",
        "Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;",
        "credentialsForm",
        "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;",
        "personalInfoUiModel",
        "personalInfoForm",
        "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;",
        "birthInfoUiModel",
        "birthInfoForm",
        "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;",
        "activationUiModel",
        "majorConsents",
        "minorConsents",
        "emailTrackingConsent",
        "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;",
        "registrationAddressUiModel",
        "addressForm",
        "",
        "isLoading",
        "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;",
        "featureFlags",
        "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;",
        "origin",
        "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;",
        "entryPoint",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZLcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;)V",
        "Companion",
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


# static fields
.field public static final q:Ljava/util/List;


# instance fields
.field public final a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;

.field public final b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

.field public final c:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;

.field public final d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

.field public final e:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

.field public final f:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

.field public final g:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;

.field public final h:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

.field public final i:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

.field public final j:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

.field public final k:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;

.field public final l:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

.field public final m:Z

.field public final n:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;

.field public final o:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

.field public final p:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/Step;->CREDENTIALS:Lcom/vuitton/android/presentation/screen/authentication/register/Step;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/register/Step;->PERSONAL_INFO:Lcom/vuitton/android/presentation/screen/authentication/register/Step;

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/register/Step;->BIRTH_INFO:Lcom/vuitton/android/presentation/screen/authentication/register/Step;

    sget-object v3, Lcom/vuitton/android/presentation/screen/authentication/register/Step;->ACCOUNT_ACTIVATION:Lcom/vuitton/android/presentation/screen/authentication/register/Step;

    filled-new-array {v0, v1, v2, v3}, [Lcom/vuitton/android/presentation/screen/authentication/register/Step;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->q:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 19

    .line 345
    const v17, 0xffff

    const/16 v18, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v18}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZLcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZLcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;)V
    .locals 0

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

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;

    .line 330
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    .line 331
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->c:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;

    .line 332
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    .line 333
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->e:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    .line 334
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->f:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    .line 335
    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->g:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;

    .line 336
    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->h:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    .line 337
    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->i:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    .line 338
    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->j:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    .line 339
    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->k:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;

    .line 340
    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->l:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    .line 341
    iput-boolean p13, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->m:Z

    .line 342
    iput-object p14, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->n:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;

    .line 343
    iput-object p15, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->o:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    move-object/from16 p1, p16

    .line 344
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->p:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZLcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 23

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;->a()Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object/from16 v1, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    new-instance v4, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;

    const/16 v11, 0x3f

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;-><init>(ZLcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    sget-object v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;->a()Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object/from16 v3, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    const/16 v17, 0x3ff

    const/16 v18, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v6 .. v18}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;-><init>(ZZZLjava/lang/String;Ljava/lang/Long;ZZZLcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_5

    sget-object v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;->a()Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    move-result-object v5

    goto :goto_5

    :cond_5
    move-object/from16 v5, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-eqz v7, :cond_6

    new-instance v7, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;

    invoke-direct {v7, v9, v9, v8, v9}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_6

    :cond_6
    move-object/from16 v7, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    sget-object v10, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;->a()Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    move-result-object v10

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    sget-object v11, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;->a()Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    move-result-object v11

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    sget-object v12, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;->a()Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    move-result-object v12

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    new-instance v13, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;

    const/16 v14, 0x7f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 p1, v13

    move/from16 p9, v14

    move-object/from16 p10, v15

    move/from16 p2, v16

    move-object/from16 p3, v17

    move-object/from16 p4, v18

    move-object/from16 p5, v19

    move-object/from16 p6, v20

    move-object/from16 p7, v21

    move-object/from16 p8, v22

    invoke-direct/range {p1 .. p10}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;-><init>(ZLcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_a

    :cond_a
    move-object/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    sget-object v14, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;->a()Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    move-result-object v14

    goto :goto_b

    :cond_b
    move-object/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    const/4 v15, 0x0

    goto :goto_c

    :cond_c
    move/from16 v15, p13

    :goto_c
    and-int/lit16 v8, v0, 0x2000

    if-eqz v8, :cond_d

    new-instance v8, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;

    move-object/from16 p18, v1

    move-object/from16 p1, v2

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v8, v2, v2, v1, v9}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_d

    :cond_d
    move-object/from16 p18, v1

    move-object/from16 p1, v2

    move-object/from16 v8, p14

    :goto_d
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_e

    move-object v1, v9

    goto :goto_e

    :cond_e
    move-object/from16 v1, p15

    :goto_e
    const v2, 0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_f

    move-object/from16 p17, v9

    :goto_f
    move-object/from16 p2, p1

    move-object/from16 p3, p18

    move-object/from16 p16, v1

    move-object/from16 p5, v3

    move-object/from16 p4, v4

    move-object/from16 p7, v5

    move-object/from16 p6, v6

    move-object/from16 p8, v7

    move-object/from16 p15, v8

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move/from16 p14, v15

    move-object/from16 p1, p0

    goto :goto_10

    :cond_f
    move-object/from16 p17, p16

    goto :goto_f

    :goto_10
    invoke-direct/range {p1 .. p17}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZLcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->n:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;->a:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->l:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->c:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->c:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->e:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->e:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->f:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->f:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->g:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->g:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->h:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->h:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->i:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->i:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->j:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->j:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->k:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->k:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->l:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->l:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->m:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->m:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->n:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->n:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->o:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->o:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->p:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->p:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    if-eq p0, p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->c:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    invoke-static {v2, v1, v0}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->e:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->f:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    invoke-static {v2, v1, v0}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->g:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->h:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    invoke-static {v2, v1, v0}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->i:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->j:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->k:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->l:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    invoke-static {v2, v1, v0}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->m:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->n:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->o:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->p:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NativeRegisterViewState(credentialsUiModel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", credentialsForm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", personalInfoUiModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->c:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", personalInfoForm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", birthInfoUiModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->e:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", birthInfoForm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->f:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activationUiModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->g:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", majorConsents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->h:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minorConsents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->i:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", emailTrackingConsent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->j:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", registrationAddressUiModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->k:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", addressForm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->l:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", featureFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->n:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->o:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", entryPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->p:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
