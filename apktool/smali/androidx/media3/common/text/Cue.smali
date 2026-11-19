.class public final Landroidx/media3/common/text/Cue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/text/Cue$Builder;,
        Landroidx/media3/common/text/Cue$VerticalType;,
        Landroidx/media3/common/text/Cue$TextSizeType;,
        Landroidx/media3/common/text/Cue$LineType;,
        Landroidx/media3/common/text/Cue$AnchorType;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String;

.field public static final B:Ljava/lang/String;

.field public static final C:Ljava/lang/String;

.field public static final D:Ljava/lang/String;

.field public static final E:Ljava/lang/String;

.field public static final F:Ljava/lang/String;

.field public static final G:Ljava/lang/String;

.field public static final H:Ljava/lang/String;

.field public static final I:Ljava/lang/String;

.field public static final J:Ljava/lang/String;

.field public static final K:Ljava/lang/String;

.field public static final L:Ljava/lang/String;

.field public static final s:Ljava/lang/String;

.field public static final t:Ljava/lang/String;

.field public static final u:Ljava/lang/String;

.field public static final v:Ljava/lang/String;

.field public static final w:Ljava/lang/String;

.field public static final x:Ljava/lang/String;

.field public static final y:Ljava/lang/String;

.field public static final z:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Landroid/text/Layout$Alignment;

.field public final c:Landroid/text/Layout$Alignment;

.field public final d:Landroid/graphics/Bitmap;

.field public final e:F

.field public final f:I

.field public final g:I

.field public final h:F

.field public final i:I

.field public final j:F

.field public final k:F

.field public final l:Z

.field public final m:I

.field public final n:I

.field public final o:F

.field public final p:I

.field public final q:F

.field public final r:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/text/Cue$Builder;

    invoke-direct {v0}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Landroidx/media3/common/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media3/common/text/Cue$Builder;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroidx/media3/common/text/Cue$Builder;->a()Landroidx/media3/common/text/Cue;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->s:Ljava/lang/String;

    const/16 v0, 0x11

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->t:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->u:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->v:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->w:Ljava/lang/String;

    const/16 v0, 0x12

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->x:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->y:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->z:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->A:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->B:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->C:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->D:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->E:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->F:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->G:Ljava/lang/String;

    const/16 v0, 0xd

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->H:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->I:Ljava/lang/String;

    const/16 v0, 0xf

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->J:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->K:Ljava/lang/String;

    const/16 v0, 0x13

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->L:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_0
    if-nez p4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->g(Z)V

    :goto_1
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/text/Cue;->a:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/text/Cue;->a:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/common/text/Cue;->a:Ljava/lang/CharSequence;

    :goto_2
    iput-object p2, p0, Landroidx/media3/common/text/Cue;->b:Landroid/text/Layout$Alignment;

    iput-object p3, p0, Landroidx/media3/common/text/Cue;->c:Landroid/text/Layout$Alignment;

    iput-object p4, p0, Landroidx/media3/common/text/Cue;->d:Landroid/graphics/Bitmap;

    iput p5, p0, Landroidx/media3/common/text/Cue;->e:F

    iput p6, p0, Landroidx/media3/common/text/Cue;->f:I

    iput p7, p0, Landroidx/media3/common/text/Cue;->g:I

    iput p8, p0, Landroidx/media3/common/text/Cue;->h:F

    iput p9, p0, Landroidx/media3/common/text/Cue;->i:I

    iput p12, p0, Landroidx/media3/common/text/Cue;->j:F

    iput p13, p0, Landroidx/media3/common/text/Cue;->k:F

    iput-boolean p14, p0, Landroidx/media3/common/text/Cue;->l:Z

    move/from16 p1, p15

    iput p1, p0, Landroidx/media3/common/text/Cue;->m:I

    iput p10, p0, Landroidx/media3/common/text/Cue;->n:I

    iput p11, p0, Landroidx/media3/common/text/Cue;->o:F

    move/from16 p1, p16

    iput p1, p0, Landroidx/media3/common/text/Cue;->p:I

    move/from16 p1, p17

    iput p1, p0, Landroidx/media3/common/text/Cue;->q:F

    move/from16 p1, p18

    iput p1, p0, Landroidx/media3/common/text/Cue;->r:I

    return-void
.end method

.method public static b(Landroid/os/Bundle;)Landroidx/media3/common/text/Cue;
    .locals 12

    new-instance v0, Landroidx/media3/common/text/Cue$Builder;

    invoke-direct {v0}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    sget-object v1, Landroidx/media3/common/text/Cue;->s:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->b(Ljava/lang/CharSequence;)V

    sget-object v3, Landroidx/media3/common/text/Cue;->t:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    sget-object v5, Landroidx/media3/common/text/CustomSpanBundler;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroidx/media3/common/text/CustomSpanBundler;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroidx/media3/common/text/CustomSpanBundler;->c:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    sget-object v8, Landroidx/media3/common/text/CustomSpanBundler;->d:Ljava/lang/String;

    const/4 v9, -0x1

    invoke-virtual {v4, v8, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    sget-object v9, Landroidx/media3/common/text/CustomSpanBundler;->e:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eq v8, v2, :cond_3

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    const/4 v9, 0x3

    if-eq v8, v9, :cond_1

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Landroidx/media3/common/text/VoiceSpan;

    sget-object v9, Landroidx/media3/common/text/VoiceSpan;->b:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v8, v4}, Landroidx/media3/common/text/VoiceSpan;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v8, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    new-instance v4, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    invoke-direct {v4}, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;-><init>()V

    invoke-interface {v1, v4, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Landroidx/media3/common/text/TextEmphasisSpan;

    sget-object v9, Landroidx/media3/common/text/TextEmphasisSpan;->d:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    sget-object v10, Landroidx/media3/common/text/TextEmphasisSpan;->e:Ljava/lang/String;

    invoke-virtual {v4, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    sget-object v11, Landroidx/media3/common/text/TextEmphasisSpan;->f:Ljava/lang/String;

    invoke-virtual {v4, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v9, v10, v4}, Landroidx/media3/common/text/TextEmphasisSpan;-><init>(III)V

    invoke-interface {v1, v8, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Landroidx/media3/common/text/RubySpan;

    sget-object v9, Landroidx/media3/common/text/RubySpan;->c:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/media3/common/text/RubySpan;->d:Ljava/lang/String;

    invoke-virtual {v4, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v9, v4}, Landroidx/media3/common/text/RubySpan;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v8, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->b(Ljava/lang/CharSequence;)V

    :cond_5
    sget-object v1, Landroidx/media3/common/text/Cue;->u:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Landroid/text/Layout$Alignment;

    if-eqz v1, :cond_6

    iput-object v1, v0, Landroidx/media3/common/text/Cue$Builder;->c:Landroid/text/Layout$Alignment;

    :cond_6
    sget-object v1, Landroidx/media3/common/text/Cue;->v:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Landroid/text/Layout$Alignment;

    if-eqz v1, :cond_7

    iput-object v1, v0, Landroidx/media3/common/text/Cue$Builder;->d:Landroid/text/Layout$Alignment;

    :cond_7
    sget-object v1, Landroidx/media3/common/text/Cue;->w:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    iput-object v1, v0, Landroidx/media3/common/text/Cue$Builder;->b:Landroid/graphics/Bitmap;

    iput-object v3, v0, Landroidx/media3/common/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_8
    sget-object v1, Landroidx/media3/common/text/Cue;->x:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_9

    array-length v5, v1

    invoke-static {v1, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/text/Cue$Builder;->b:Landroid/graphics/Bitmap;

    iput-object v3, v0, Landroidx/media3/common/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    :cond_9
    :goto_1
    sget-object v1, Landroidx/media3/common/text/Cue;->y:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Landroidx/media3/common/text/Cue;->z:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->e:F

    iput v3, v0, Landroidx/media3/common/text/Cue$Builder;->f:I

    :cond_a
    sget-object v1, Landroidx/media3/common/text/Cue;->A:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->g:I

    :cond_b
    sget-object v1, Landroidx/media3/common/text/Cue;->B:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->h:F

    :cond_c
    sget-object v1, Landroidx/media3/common/text/Cue;->C:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->i:I

    :cond_d
    sget-object v1, Landroidx/media3/common/text/Cue;->E:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Landroidx/media3/common/text/Cue;->D:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->k:F

    iput v3, v0, Landroidx/media3/common/text/Cue$Builder;->j:I

    :cond_e
    sget-object v1, Landroidx/media3/common/text/Cue;->F:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->l:F

    :cond_f
    sget-object v1, Landroidx/media3/common/text/Cue;->G:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->m:F

    :cond_10
    sget-object v1, Landroidx/media3/common/text/Cue;->H:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->o:I

    iput-boolean v2, v0, Landroidx/media3/common/text/Cue$Builder;->n:Z

    :cond_11
    sget-object v1, Landroidx/media3/common/text/Cue;->I:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_12

    iput-boolean v4, v0, Landroidx/media3/common/text/Cue$Builder;->n:Z

    :cond_12
    sget-object v1, Landroidx/media3/common/text/Cue;->J:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->p:I

    :cond_13
    sget-object v1, Landroidx/media3/common/text/Cue;->K:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->q:F

    :cond_14
    sget-object v1, Landroidx/media3/common/text/Cue;->L:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Landroidx/media3/common/text/Cue$Builder;->r:I

    :cond_15
    invoke-virtual {v0}, Landroidx/media3/common/text/Cue$Builder;->a()Landroidx/media3/common/text/Cue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Landroidx/media3/common/text/Cue$Builder;
    .locals 2

    new-instance v0, Landroidx/media3/common/text/Cue$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Landroidx/media3/common/text/Cue;->a:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/media3/common/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/common/text/Cue;->d:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroidx/media3/common/text/Cue$Builder;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroidx/media3/common/text/Cue;->b:Landroid/text/Layout$Alignment;

    iput-object v1, v0, Landroidx/media3/common/text/Cue$Builder;->c:Landroid/text/Layout$Alignment;

    iget-object v1, p0, Landroidx/media3/common/text/Cue;->c:Landroid/text/Layout$Alignment;

    iput-object v1, v0, Landroidx/media3/common/text/Cue$Builder;->d:Landroid/text/Layout$Alignment;

    iget v1, p0, Landroidx/media3/common/text/Cue;->e:F

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->e:F

    iget v1, p0, Landroidx/media3/common/text/Cue;->f:I

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->f:I

    iget v1, p0, Landroidx/media3/common/text/Cue;->g:I

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->g:I

    iget v1, p0, Landroidx/media3/common/text/Cue;->h:F

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->h:F

    iget v1, p0, Landroidx/media3/common/text/Cue;->i:I

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->i:I

    iget v1, p0, Landroidx/media3/common/text/Cue;->n:I

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->j:I

    iget v1, p0, Landroidx/media3/common/text/Cue;->o:F

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->k:F

    iget v1, p0, Landroidx/media3/common/text/Cue;->j:F

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->l:F

    iget v1, p0, Landroidx/media3/common/text/Cue;->k:F

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->m:F

    iget-boolean v1, p0, Landroidx/media3/common/text/Cue;->l:Z

    iput-boolean v1, v0, Landroidx/media3/common/text/Cue$Builder;->n:Z

    iget v1, p0, Landroidx/media3/common/text/Cue;->m:I

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->o:I

    iget v1, p0, Landroidx/media3/common/text/Cue;->p:I

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->p:I

    iget v1, p0, Landroidx/media3/common/text/Cue;->q:F

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->q:F

    iget p0, p0, Landroidx/media3/common/text/Cue;->r:I

    iput p0, v0, Landroidx/media3/common/text/Cue$Builder;->r:I

    return-object v0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 11

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/media3/common/text/Cue;->a:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    sget-object v2, Landroidx/media3/common/text/Cue;->s:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    instance-of v2, v1, Landroid/text/Spanned;

    if-eqz v2, :cond_4

    check-cast v1, Landroid/text/Spanned;

    sget-object v2, Landroidx/media3/common/text/CustomSpanBundler;->a:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Landroidx/media3/common/text/RubySpan;

    const/4 v5, 0x0

    invoke-interface {v1, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/media3/common/text/RubySpan;

    array-length v4, v3

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v3, v6

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    sget-object v9, Landroidx/media3/common/text/RubySpan;->c:Ljava/lang/String;

    iget-object v10, v7, Landroidx/media3/common/text/RubySpan;->a:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Landroidx/media3/common/text/RubySpan;->d:Ljava/lang/String;

    iget v10, v7, Landroidx/media3/common/text/RubySpan;->b:I

    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v9, 0x1

    invoke-static {v1, v7, v9, v8}, Landroidx/media3/common/text/CustomSpanBundler;->a(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Landroidx/media3/common/text/TextEmphasisSpan;

    invoke-interface {v1, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/media3/common/text/TextEmphasisSpan;

    array-length v4, v3

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    sget-object v9, Landroidx/media3/common/text/TextEmphasisSpan;->d:Ljava/lang/String;

    iget v10, v7, Landroidx/media3/common/text/TextEmphasisSpan;->a:I

    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v9, Landroidx/media3/common/text/TextEmphasisSpan;->e:Ljava/lang/String;

    iget v10, v7, Landroidx/media3/common/text/TextEmphasisSpan;->b:I

    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v9, Landroidx/media3/common/text/TextEmphasisSpan;->f:Ljava/lang/String;

    iget v10, v7, Landroidx/media3/common/text/TextEmphasisSpan;->c:I

    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v9, 0x2

    invoke-static {v1, v7, v9, v8}, Landroidx/media3/common/text/CustomSpanBundler;->a(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    invoke-interface {v1, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    array-length v4, v3

    move v6, v5

    :goto_2
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static {v1, v7, v8, v9}, Landroidx/media3/common/text/CustomSpanBundler;->a(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Landroidx/media3/common/text/VoiceSpan;

    invoke-interface {v1, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/media3/common/text/VoiceSpan;

    array-length v4, v3

    :goto_3
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    sget-object v8, Landroidx/media3/common/text/VoiceSpan;->b:Ljava/lang/String;

    iget-object v9, v6, Landroidx/media3/common/text/VoiceSpan;->a:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x4

    invoke-static {v1, v6, v8, v7}, Landroidx/media3/common/text/CustomSpanBundler;->a(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Landroidx/media3/common/text/Cue;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_4
    sget-object v1, Landroidx/media3/common/text/Cue;->u:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/text/Cue;->b:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object v1, Landroidx/media3/common/text/Cue;->v:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/text/Cue;->c:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object v1, Landroidx/media3/common/text/Cue;->y:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->e:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v1, Landroidx/media3/common/text/Cue;->z:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/text/Cue;->A:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/text/Cue;->B:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->h:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v1, Landroidx/media3/common/text/Cue;->C:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/text/Cue;->D:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->n:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/text/Cue;->E:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->o:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v1, Landroidx/media3/common/text/Cue;->F:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->j:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v1, Landroidx/media3/common/text/Cue;->G:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->k:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v1, Landroidx/media3/common/text/Cue;->I:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/common/text/Cue;->l:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/common/text/Cue;->H:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->m:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/text/Cue;->J:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/text/Cue;->K:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->q:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v1, Landroidx/media3/common/text/Cue;->L:Ljava/lang/String;

    iget p0, p0, Landroidx/media3/common/text/Cue;->r:I

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p1, :cond_3

    const-class v0, Landroidx/media3/common/text/Cue;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    check-cast p1, Landroidx/media3/common/text/Cue;

    iget-object v0, p0, Landroidx/media3/common/text/Cue;->a:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/media3/common/text/Cue;->a:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/common/text/Cue;->b:Landroid/text/Layout$Alignment;

    iget-object v1, p1, Landroidx/media3/common/text/Cue;->b:Landroid/text/Layout$Alignment;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroidx/media3/common/text/Cue;->c:Landroid/text/Layout$Alignment;

    iget-object v1, p1, Landroidx/media3/common/text/Cue;->c:Landroid/text/Layout$Alignment;

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Landroidx/media3/common/text/Cue;->d:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroidx/media3/common/text/Cue;->d:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    if-nez v0, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    iget v0, p0, Landroidx/media3/common/text/Cue;->e:F

    iget v1, p1, Landroidx/media3/common/text/Cue;->e:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/media3/common/text/Cue;->f:I

    iget v1, p1, Landroidx/media3/common/text/Cue;->f:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroidx/media3/common/text/Cue;->g:I

    iget v1, p1, Landroidx/media3/common/text/Cue;->g:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroidx/media3/common/text/Cue;->h:F

    iget v1, p1, Landroidx/media3/common/text/Cue;->h:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/media3/common/text/Cue;->i:I

    iget v1, p1, Landroidx/media3/common/text/Cue;->i:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroidx/media3/common/text/Cue;->j:F

    iget v1, p1, Landroidx/media3/common/text/Cue;->j:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/media3/common/text/Cue;->k:F

    iget v1, p1, Landroidx/media3/common/text/Cue;->k:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroidx/media3/common/text/Cue;->l:Z

    iget-boolean v1, p1, Landroidx/media3/common/text/Cue;->l:Z

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroidx/media3/common/text/Cue;->m:I

    iget v1, p1, Landroidx/media3/common/text/Cue;->m:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroidx/media3/common/text/Cue;->n:I

    iget v1, p1, Landroidx/media3/common/text/Cue;->n:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroidx/media3/common/text/Cue;->o:F

    iget v1, p1, Landroidx/media3/common/text/Cue;->o:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/media3/common/text/Cue;->p:I

    iget v1, p1, Landroidx/media3/common/text/Cue;->p:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroidx/media3/common/text/Cue;->q:F

    iget v1, p1, Landroidx/media3/common/text/Cue;->q:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget p0, p0, Landroidx/media3/common/text/Cue;->r:I

    iget p1, p1, Landroidx/media3/common/text/Cue;->r:I

    if-ne p0, p1, :cond_3

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/media3/common/text/Cue;->e:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget v1, v0, Landroidx/media3/common/text/Cue;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v1, v0, Landroidx/media3/common/text/Cue;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v1, v0, Landroidx/media3/common/text/Cue;->h:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iget v1, v0, Landroidx/media3/common/text/Cue;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v1, v0, Landroidx/media3/common/text/Cue;->j:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iget v1, v0, Landroidx/media3/common/text/Cue;->k:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iget-boolean v1, v0, Landroidx/media3/common/text/Cue;->l:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget v1, v0, Landroidx/media3/common/text/Cue;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v1, v0, Landroidx/media3/common/text/Cue;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget v1, v0, Landroidx/media3/common/text/Cue;->o:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    iget v1, v0, Landroidx/media3/common/text/Cue;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v1, v0, Landroidx/media3/common/text/Cue;->q:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    iget v1, v0, Landroidx/media3/common/text/Cue;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget-object v2, v0, Landroidx/media3/common/text/Cue;->a:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroidx/media3/common/text/Cue;->b:Landroid/text/Layout$Alignment;

    iget-object v4, v0, Landroidx/media3/common/text/Cue;->c:Landroid/text/Layout$Alignment;

    iget-object v5, v0, Landroidx/media3/common/text/Cue;->d:Landroid/graphics/Bitmap;

    filled-new-array/range {v2 .. v19}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
