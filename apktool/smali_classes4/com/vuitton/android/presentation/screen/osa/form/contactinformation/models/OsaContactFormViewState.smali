.class public final Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001$B\u00f5\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\t\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0018\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010 \u001a\u00020\u001e\u0012\u0006\u0010!\u001a\u00020\u001e\u00a2\u0006\u0004\u0008\"\u0010#\u00a8\u0006%"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;",
        "inAppDispatch",
        "",
        "isLoading",
        "isGuestUser",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;",
        "timeSlot",
        "",
        "appointmentId",
        "appointmentReasonId",
        "Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;",
        "appointment",
        "Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;",
        "appointmentType",
        "hasAlreadyAnAppointment",
        "hasGuestConnected",
        "isReasonsEnabled",
        "isAppointmentModification",
        "isOsaCidEnabled",
        "isNativeAccountActivationEnabled",
        "Lcom/vuitton/foundation/model/domain/model/profile/Profile;",
        "profile",
        "Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;",
        "currentOnGoingOsa",
        "Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;",
        "accountStatus",
        "formContactMode",
        "createdAppointment",
        "Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;",
        "guestUserEmailForm",
        "guestUserMainForm",
        "loggedUserForm",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLjava/lang/Boolean;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZZZLcom/vuitton/foundation/model/domain/model/profile/Profile;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;)V",
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


# instance fields
.field public final a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final b:Z

.field public final c:Ljava/lang/Boolean;

.field public final d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

.field public final h:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

.field public final i:Ljava/lang/Boolean;

.field public final j:Ljava/lang/Boolean;

.field public final k:Ljava/lang/Boolean;

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

.field public final p:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

.field public final q:Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;

.field public final r:Ljava/lang/String;

.field public final s:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

.field public final t:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

.field public final u:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

.field public final v:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLjava/lang/Boolean;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZZZLcom/vuitton/foundation/model/domain/model/profile/Profile;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p20 .. p20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p21 .. p21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p22 .. p22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    .line 191
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->b:Z

    .line 192
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->c:Ljava/lang/Boolean;

    .line 193
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    .line 194
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->e:Ljava/lang/String;

    .line 195
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->f:Ljava/lang/String;

    .line 196
    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->g:Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

    .line 197
    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->h:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    .line 198
    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->i:Ljava/lang/Boolean;

    .line 199
    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->j:Ljava/lang/Boolean;

    .line 200
    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->k:Ljava/lang/Boolean;

    .line 201
    iput-boolean p12, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->l:Z

    .line 202
    iput-boolean p13, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->m:Z

    .line 203
    iput-boolean p14, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->n:Z

    .line 204
    iput-object p15, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->o:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    move-object/from16 p1, p16

    .line 205
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->p:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    move-object/from16 p1, p17

    .line 206
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->q:Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;

    move-object/from16 p1, p18

    .line 207
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->r:Ljava/lang/String;

    move-object/from16 p1, p19

    .line 208
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->s:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    move-object/from16 p1, p20

    .line 209
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->t:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    move-object/from16 p1, p21

    .line 210
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->u:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    move-object/from16 p1, p22

    .line 211
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->v:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLjava/lang/Boolean;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZZZLcom/vuitton/foundation/model/domain/model/profile/Profile;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 26

    move/from16 v0, p23

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move/from16 v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v6, v3

    goto :goto_1

    :cond_1
    move-object/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    move-object v7, v3

    goto :goto_2

    :cond_2
    move-object/from16 v7, p4

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    move-object v8, v3

    goto :goto_3

    :cond_3
    move-object/from16 v8, p5

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    move-object v9, v3

    goto :goto_4

    :cond_4
    move-object/from16 v9, p6

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    move-object v10, v3

    goto :goto_5

    :cond_5
    move-object/from16 v10, p7

    :goto_5
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_6

    move-object v11, v3

    goto :goto_6

    :cond_6
    move-object/from16 v11, p8

    :goto_6
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_7

    move-object v12, v3

    goto :goto_7

    :cond_7
    move-object/from16 v12, p9

    :goto_7
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_8

    move-object v13, v3

    goto :goto_8

    :cond_8
    move-object/from16 v13, p10

    :goto_8
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_9

    move-object v14, v3

    goto :goto_9

    :cond_9
    move-object/from16 v14, p11

    :goto_9
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_a

    move v15, v2

    goto :goto_a

    :cond_a
    move/from16 v15, p12

    :goto_a
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_b

    move/from16 v16, v2

    goto :goto_b

    :cond_b
    move/from16 v16, p13

    :goto_b
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_c

    move/from16 v17, v2

    goto :goto_c

    :cond_c
    move/from16 v17, p14

    :goto_c
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_d

    move-object/from16 v18, v3

    goto :goto_d

    :cond_d
    move-object/from16 v18, p15

    :goto_d
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move-object/from16 v19, v3

    goto :goto_e

    :cond_e
    move-object/from16 v19, p16

    :goto_e
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move-object/from16 v20, v3

    goto :goto_f

    :cond_f
    move-object/from16 v20, p17

    :goto_f
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    move-object/from16 v21, v1

    goto :goto_10

    :cond_10
    move-object/from16 v21, p18

    :goto_10
    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    move-object/from16 v22, v3

    move-object/from16 v4, p1

    move-object/from16 v23, p20

    move-object/from16 v24, p21

    move-object/from16 v25, p22

    move-object/from16 v3, p0

    goto :goto_11

    :cond_11
    move-object/from16 v22, p19

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v23, p20

    move-object/from16 v24, p21

    move-object/from16 v25, p22

    :goto_11
    invoke-direct/range {v3 .. v25}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLjava/lang/Boolean;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZZZLcom/vuitton/foundation/model/domain/model/profile/Profile;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->c:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->c:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->g:Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->g:Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->h:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->h:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->i:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->i:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->j:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->j:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->k:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->k:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->l:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->l:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->m:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->m:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->n:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->n:Z

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->o:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->o:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->p:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->p:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->q:Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->q:Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->s:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->s:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->t:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->t:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->u:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->u:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->v:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->v:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->c:Ljava/lang/Boolean;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->e:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->f:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->g:Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->h:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->i:Ljava/lang/Boolean;

    if-nez v3, :cond_6

    move v3, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->j:Ljava/lang/Boolean;

    if-nez v3, :cond_7

    move v3, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->k:Ljava/lang/Boolean;

    if-nez v3, :cond_8

    move v3, v2

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->l:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->m:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->n:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->o:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-nez v3, :cond_9

    move v3, v2

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->p:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    if-nez v3, :cond_a

    move v3, v2

    goto :goto_a

    :cond_a
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->hashCode()I

    move-result v3

    :goto_a
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->q:Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;

    if-nez v3, :cond_b

    move v3, v2

    goto :goto_b

    :cond_b
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;->hashCode()I

    move-result v3

    :goto_b
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->r:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->s:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    if-nez v3, :cond_c

    goto :goto_c

    :cond_c
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->t:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->u:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->v:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OsaContactFormViewState(inAppDispatch="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isGuestUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->c:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timeSlot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appointmentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appointmentReasonId="

    const-string v2, ", appointment="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->f:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->g:Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appointmentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->h:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasAlreadyAnAppointment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasGuestConnected="

    const-string v2, ", isReasonsEnabled="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->i:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->j:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->k:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAppointmentModification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isOsaCidEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isNativeAccountActivationEnabled="

    const-string v2, ", profile="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->m:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->n:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->o:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentOnGoingOsa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->p:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", accountStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->q:Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", formContactMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAppointment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->s:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", guestUserEmailForm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->t:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", guestUserMainForm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->u:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", loggedUserForm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->v:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
