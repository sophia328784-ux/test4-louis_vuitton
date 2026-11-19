.class public final Landroidx/media3/session/CommandButton$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/CommandButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:I

.field public b:Landroidx/media3/session/SessionCommand;

.field public c:I

.field public final d:I

.field public e:Landroid/net/Uri;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/os/Bundle;

.field public h:Z

.field public i:Lcom/google/common/primitives/ImmutableIntArray;

.field public j:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 354
    invoke-direct {p0, v0}, Landroidx/media3/session/CommandButton$Builder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    sget-object v0, Landroidx/media3/session/CommandButton;->k:Ljava/lang/String;

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_0

    :sswitch_0
    const v0, 0x7f0802ec

    goto/16 :goto_0

    :sswitch_1
    const v0, 0x7f0802f0

    goto/16 :goto_0

    :sswitch_2
    const v0, 0x7f080319

    goto/16 :goto_0

    :sswitch_3
    const v0, 0x7f080317

    goto/16 :goto_0

    :sswitch_4
    const v0, 0x7f0802e2

    goto/16 :goto_0

    :sswitch_5
    const v0, 0x7f0802d9

    goto/16 :goto_0

    :sswitch_6
    const v0, 0x7f0802d7

    goto/16 :goto_0

    :sswitch_7
    const v0, 0x7f080311

    goto/16 :goto_0

    :sswitch_8
    const v0, 0x7f0802e0

    goto/16 :goto_0

    :sswitch_9
    const v0, 0x7f0802e6

    goto/16 :goto_0

    :sswitch_a
    const v0, 0x7f0802e5

    goto/16 :goto_0

    :sswitch_b
    const v0, 0x7f0802f5

    goto/16 :goto_0

    :sswitch_c
    const v0, 0x7f080309

    goto/16 :goto_0

    :sswitch_d
    const v0, 0x7f08030e

    goto/16 :goto_0

    :sswitch_e
    const v0, 0x7f080303

    goto/16 :goto_0

    :sswitch_f
    const v0, 0x7f080305

    goto/16 :goto_0

    :sswitch_10
    const v0, 0x7f0802fe

    goto/16 :goto_0

    :sswitch_11
    const v0, 0x7f08030c

    goto/16 :goto_0

    :sswitch_12
    const v0, 0x7f0802f1

    goto/16 :goto_0

    :sswitch_13
    const v0, 0x7f0802eb

    goto/16 :goto_0

    :sswitch_14
    const v0, 0x7f0802ee

    goto/16 :goto_0

    :sswitch_15
    const v0, 0x7f0802ef

    goto/16 :goto_0

    :sswitch_16
    const v0, 0x7f0802dd

    goto/16 :goto_0

    :sswitch_17
    const v0, 0x7f080306

    goto/16 :goto_0

    :sswitch_18
    const v0, 0x7f0802ed

    goto/16 :goto_0

    :sswitch_19
    const v0, 0x7f080315

    goto/16 :goto_0

    :sswitch_1a
    const v0, 0x7f0802f3

    goto/16 :goto_0

    :sswitch_1b
    const v0, 0x7f08031a

    goto/16 :goto_0

    :sswitch_1c
    const v0, 0x7f080318

    goto/16 :goto_0

    :sswitch_1d
    const v0, 0x7f080301

    goto/16 :goto_0

    :sswitch_1e
    const v0, 0x7f0802e3

    goto/16 :goto_0

    :sswitch_1f
    const v0, 0x7f0802da

    goto/16 :goto_0

    :sswitch_20
    const v0, 0x7f0802d8

    goto/16 :goto_0

    :sswitch_21
    const v0, 0x7f080312

    goto/16 :goto_0

    :sswitch_22
    const v0, 0x7f080302

    goto/16 :goto_0

    :sswitch_23
    const v0, 0x7f080316

    goto/16 :goto_0

    :sswitch_24
    const v0, 0x7f0802fc

    goto/16 :goto_0

    :sswitch_25
    const v0, 0x7f0802f8

    goto/16 :goto_0

    :sswitch_26
    const v0, 0x7f0802e4

    goto/16 :goto_0

    :sswitch_27
    const v0, 0x7f0802e1

    goto/16 :goto_0

    :sswitch_28
    const v0, 0x7f0802d6

    goto/16 :goto_0

    :sswitch_29
    const v0, 0x7f0802f6

    goto/16 :goto_0

    :sswitch_2a
    const v0, 0x7f0802f4

    goto/16 :goto_0

    :sswitch_2b
    const v0, 0x7f0802df

    goto/16 :goto_0

    :sswitch_2c
    const v0, 0x7f0802ea

    goto/16 :goto_0

    :sswitch_2d
    const v0, 0x7f0802fb

    goto/16 :goto_0

    :sswitch_2e
    const v0, 0x7f0802fa

    goto/16 :goto_0

    :sswitch_2f
    const v0, 0x7f0802f9

    goto/16 :goto_0

    :sswitch_30
    const v0, 0x7f08030b

    goto/16 :goto_0

    :sswitch_31
    const v0, 0x7f08030a

    goto/16 :goto_0

    :sswitch_32
    const v0, 0x7f080308

    goto/16 :goto_0

    :sswitch_33
    const v0, 0x7f080310

    goto :goto_0

    :sswitch_34
    const v0, 0x7f08030f

    goto :goto_0

    :sswitch_35
    const v0, 0x7f08030d

    goto :goto_0

    :sswitch_36
    const v0, 0x7f08031d

    goto :goto_0

    :sswitch_37
    const v0, 0x7f08031c

    goto :goto_0

    :sswitch_38
    const v0, 0x7f08031b

    goto :goto_0

    :sswitch_39
    const v0, 0x7f080314

    goto :goto_0

    :sswitch_3a
    const v0, 0x7f080313

    goto :goto_0

    :sswitch_3b
    const v0, 0x7f0802f7

    goto :goto_0

    :sswitch_3c
    const v0, 0x7f0802e7

    goto :goto_0

    :sswitch_3d
    const v0, 0x7f080304

    goto :goto_0

    :sswitch_3e
    const v0, 0x7f080307

    goto :goto_0

    :sswitch_3f
    const v0, 0x7f0802ff

    goto :goto_0

    :sswitch_40
    const v0, 0x7f0802fd

    goto :goto_0

    :sswitch_41
    const v0, 0x7f0802f2

    goto :goto_0

    :sswitch_42
    const v0, 0x7f0802e9

    goto :goto_0

    :sswitch_43
    const v0, 0x7f0802e8

    goto :goto_0

    :sswitch_44
    const v0, 0x7f080300

    goto :goto_0

    :sswitch_45
    const v0, 0x7f0802de

    goto :goto_0

    :sswitch_46
    const v0, 0x7f0802dc

    goto :goto_0

    :sswitch_47
    const v0, 0x7f0802d5

    goto :goto_0

    :sswitch_48
    const v0, 0x7f0802d4

    :goto_0
    invoke-direct {p0, p1, v0}, Landroidx/media3/session/CommandButton$Builder;-><init>(II)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0xe019 -> :sswitch_48
        0xe01a -> :sswitch_47
        0xe01c -> :sswitch_46
        0xe01f -> :sswitch_45
        0xe020 -> :sswitch_44
        0xe034 -> :sswitch_43
        0xe037 -> :sswitch_42
        0xe03b -> :sswitch_41
        0xe040 -> :sswitch_40
        0xe041 -> :sswitch_3f
        0xe042 -> :sswitch_3e
        0xe043 -> :sswitch_3d
        0xe044 -> :sswitch_3c
        0xe045 -> :sswitch_3b
        0xe047 -> :sswitch_3a
        0xe048 -> :sswitch_39
        0xe04d -> :sswitch_38
        0xe04f -> :sswitch_37
        0xe050 -> :sswitch_36
        0xe056 -> :sswitch_35
        0xe057 -> :sswitch_34
        0xe058 -> :sswitch_33
        0xe059 -> :sswitch_32
        0xe05a -> :sswitch_31
        0xe05b -> :sswitch_30
        0xe05c -> :sswitch_2f
        0xe066 -> :sswitch_2e
        0xe067 -> :sswitch_2d
        0xe068 -> :sswitch_2c
        0xe0e5 -> :sswitch_2b
        0xe145 -> :sswitch_2a
        0xe147 -> :sswitch_29
        0xe14b -> :sswitch_28
        0xe153 -> :sswitch_27
        0xe15b -> :sswitch_26
        0xe429 -> :sswitch_25
        0xe51e -> :sswitch_24
        0xe627 -> :sswitch_23
        0xe80d -> :sswitch_22
        0xe838 -> :sswitch_21
        0xe866 -> :sswitch_20
        0xe86c -> :sswitch_1f
        0xe87d -> :sswitch_1e
        0xe8b8 -> :sswitch_1d
        0xe8db -> :sswitch_1c
        0xe8dc -> :sswitch_1b
        0xeb80 -> :sswitch_1a
        0xef72 -> :sswitch_19
        0xefcd -> :sswitch_18
        0xf048 -> :sswitch_17
        0xf1dc -> :sswitch_16
        0xf4e0 -> :sswitch_15
        0xf4e1 -> :sswitch_14
        0xf4e2 -> :sswitch_13
        0xf4eb -> :sswitch_12
        0xf6f4 -> :sswitch_11
        0xfe040 -> :sswitch_10
        0xfe043 -> :sswitch_f
        0xfe044 -> :sswitch_e
        0xfe056 -> :sswitch_d
        0xfe059 -> :sswitch_c
        0xfe147 -> :sswitch_b
        0xfe148 -> :sswitch_a
        0xfe149 -> :sswitch_9
        0xfe153 -> :sswitch_8
        0xfe838 -> :sswitch_7
        0xfe866 -> :sswitch_6
        0xfe86c -> :sswitch_5
        0xfe87d -> :sswitch_4
        0xfe8db -> :sswitch_3
        0xfe8dc -> :sswitch_2
        0xff4e0 -> :sswitch_1
        0xff4e2 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput p1, p0, Landroidx/media3/session/CommandButton$Builder;->a:I

    .line 357
    iput p2, p0, Landroidx/media3/session/CommandButton$Builder;->d:I

    .line 358
    const-string p1, ""

    iput-object p1, p0, Landroidx/media3/session/CommandButton$Builder;->f:Ljava/lang/CharSequence;

    .line 359
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/media3/session/CommandButton$Builder;->g:Landroid/os/Bundle;

    const/4 p1, -0x1

    .line 360
    iput p1, p0, Landroidx/media3/session/CommandButton$Builder;->c:I

    const/4 p1, 0x1

    .line 361
    iput-boolean p1, p0, Landroidx/media3/session/CommandButton$Builder;->h:Z

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/session/CommandButton;
    .locals 13

    iget-object v0, p0, Landroidx/media3/session/CommandButton$Builder;->b:Landroidx/media3/session/SessionCommand;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p0, Landroidx/media3/session/CommandButton$Builder;->c:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eq v0, v3, :cond_2

    move v1, v2

    :cond_2
    const-string v0, "Exactly one of sessionCommand and playerCommand should be set"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->p(Ljava/lang/String;Z)V

    iget-object v0, p0, Landroidx/media3/session/CommandButton$Builder;->i:Lcom/google/common/primitives/ImmutableIntArray;

    if-nez v0, :cond_8

    iget v0, p0, Landroidx/media3/session/CommandButton$Builder;->c:I

    sget-object v1, Landroidx/media3/session/CommandButton;->k:Ljava/lang/String;

    if-eq v0, v2, :cond_7

    const v1, 0xe037

    iget v3, p0, Landroidx/media3/session/CommandButton$Builder;->a:I

    if-eq v3, v1, :cond_7

    const v1, 0xe034

    if-ne v3, v1, :cond_3

    goto :goto_3

    :cond_3
    const/16 v1, 0xb

    if-eq v0, v1, :cond_6

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6

    const/4 v2, 0x6

    if-eq v0, v2, :cond_6

    const v1, 0xe045

    if-eq v3, v1, :cond_6

    const v1, 0xe020

    if-eq v3, v1, :cond_6

    const v1, 0xe042

    if-eq v3, v1, :cond_6

    const v1, 0xe05b

    if-eq v3, v1, :cond_6

    const v1, 0xe059

    if-eq v3, v1, :cond_6

    const v1, 0xfe059

    if-eq v3, v1, :cond_6

    const v1, 0xe05a

    if-ne v3, v1, :cond_4

    goto :goto_2

    :cond_4
    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const v0, 0xe044

    if-eq v3, v0, :cond_5

    const v0, 0xe01f

    if-eq v3, v0, :cond_5

    const v0, 0xf6f4

    if-eq v3, v0, :cond_5

    const v0, 0xe058

    if-eq v3, v0, :cond_5

    const v0, 0xe056

    if-eq v3, v0, :cond_5

    const v0, 0xfe056

    if-eq v3, v0, :cond_5

    const v0, 0xe057

    if-ne v3, v0, :cond_7

    :cond_5
    const/4 v2, 0x3

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v2, 0x2

    :cond_7
    :goto_3
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    filled-new-array {v2}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    iput-object v0, p0, Landroidx/media3/session/CommandButton$Builder;->i:Lcom/google/common/primitives/ImmutableIntArray;

    :cond_8
    new-instance v2, Landroidx/media3/session/CommandButton;

    iget-object v3, p0, Landroidx/media3/session/CommandButton$Builder;->b:Landroidx/media3/session/SessionCommand;

    iget v4, p0, Landroidx/media3/session/CommandButton$Builder;->c:I

    iget-object v7, p0, Landroidx/media3/session/CommandButton$Builder;->e:Landroid/net/Uri;

    iget-object v8, p0, Landroidx/media3/session/CommandButton$Builder;->f:Ljava/lang/CharSequence;

    iget-object v9, p0, Landroidx/media3/session/CommandButton$Builder;->g:Landroid/os/Bundle;

    iget-boolean v10, p0, Landroidx/media3/session/CommandButton$Builder;->h:Z

    iget-object v11, p0, Landroidx/media3/session/CommandButton$Builder;->i:Lcom/google/common/primitives/ImmutableIntArray;

    iget-object v12, p0, Landroidx/media3/session/CommandButton$Builder;->j:Ljava/lang/Object;

    iget v5, p0, Landroidx/media3/session/CommandButton$Builder;->a:I

    iget v6, p0, Landroidx/media3/session/CommandButton$Builder;->d:I

    invoke-direct/range {v2 .. v12}, Landroidx/media3/session/CommandButton;-><init>(Landroidx/media3/session/SessionCommand;IIILandroid/net/Uri;Ljava/lang/CharSequence;Landroid/os/Bundle;ZLcom/google/common/primitives/ImmutableIntArray;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final b(Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.resource"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Only content or resource Uris are supported for CommandButton"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->h(ZLjava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/session/CommandButton$Builder;->e:Landroid/net/Uri;

    return-void
.end method

.method public final c(I)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/CommandButton$Builder;->b:Landroidx/media3/session/SessionCommand;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "sessionCommand is already set. Only one of sessionCommand and playerCommand should be set."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->h(ZLjava/lang/String;)V

    iput p1, p0, Landroidx/media3/session/CommandButton$Builder;->c:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/session/CommandButton$Builder;->j:Ljava/lang/Object;

    return-void
.end method

.method public final d(Landroidx/media3/session/SessionCommand;Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Landroidx/media3/session/CommandButton$Builder;->c:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "playerCommands is already set. Only one of sessionCommand and playerCommand should be set."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->h(ZLjava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/session/CommandButton$Builder;->b:Landroidx/media3/session/SessionCommand;

    iget p1, p1, Landroidx/media3/session/SessionCommand;->a:I

    sget-object v0, Landroidx/media3/session/CommandButton;->k:Ljava/lang/String;

    const v0, 0x9c4a

    if-ne p1, v0, :cond_1

    const/4 v2, 0x5

    :cond_1
    invoke-static {v2, p2}, Landroidx/media3/session/CommandButton;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/CommandButton$Builder;->j:Ljava/lang/Object;

    return-void
.end method
