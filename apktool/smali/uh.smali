.class public final synthetic Luh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 7
    iput p1, p0, Luh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;)V
    .locals 0

    const/4 p1, 0x4

    iput p1, p0, Luh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget p0, p0, Luh;->b:I

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/os/Bundle;

    sget-object p0, Landroidx/media3/common/Tracks$Group;->f:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/media3/common/TrackGroup;->a(Landroid/os/Bundle;)Landroidx/media3/common/TrackGroup;

    move-result-object p0

    sget-object v1, Landroidx/media3/common/Tracks$Group;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iget v2, p0, Landroidx/media3/common/TrackGroup;->a:I

    new-array v3, v2, [I

    invoke-static {v1, v3}, Lcom/google/common/base/MoreObjects;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    sget-object v3, Landroidx/media3/common/Tracks$Group;->h:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v3

    new-array v2, v2, [Z

    invoke-static {v3, v2}, Lcom/google/common/base/MoreObjects;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    sget-object v3, Landroidx/media3/common/Tracks$Group;->i:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    new-instance v0, Landroidx/media3/common/Tracks$Group;

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/media3/common/Tracks$Group;-><init>(Landroidx/media3/common/TrackGroup;Z[I[Z)V

    return-object v0

    :pswitch_0
    check-cast p1, Landroidx/media3/common/Tracks$Group;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Landroidx/media3/common/Tracks$Group;->f:Ljava/lang/String;

    iget-object v1, p1, Landroidx/media3/common/Tracks$Group;->b:Landroidx/media3/common/TrackGroup;

    invoke-virtual {v1}, Landroidx/media3/common/TrackGroup;->d()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Landroidx/media3/common/Tracks$Group;->g:Ljava/lang/String;

    iget-object v1, p1, Landroidx/media3/common/Tracks$Group;->d:[I

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object v0, Landroidx/media3/common/Tracks$Group;->h:Ljava/lang/String;

    iget-object v1, p1, Landroidx/media3/common/Tracks$Group;->e:[Z

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    sget-object v0, Landroidx/media3/common/Tracks$Group;->i:Ljava/lang/String;

    iget-boolean p1, p1, Landroidx/media3/common/Tracks$Group;->c:Z

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/media3/common/TrackGroup;

    sget-object p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->d:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget p0, p1, Landroidx/media3/common/TrackGroup;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    move-object p0, p1

    check-cast p0, Landroid/os/Bundle;

    sget-object v1, Landroidx/media3/common/Format;->R:Landroidx/media3/common/Format;

    new-instance v2, Landroidx/media3/common/Format$Builder;

    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    if-eqz p0, :cond_0

    const-class p1, Landroidx/media3/common/util/BundleCollectionUtil;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    sget-object v3, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    sget-object p1, Landroidx/media3/common/Format;->S:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, v1, Landroidx/media3/common/Format;->a:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    iput-object p1, v2, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    sget-object p1, Landroidx/media3/common/Format;->T:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, v1, Landroidx/media3/common/Format;->b:Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v3

    :goto_1
    iput-object p1, v2, Landroidx/media3/common/Format$Builder;->b:Ljava/lang/String;

    sget-object p1, Landroidx/media3/common/Format;->x0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_3

    :cond_3
    sget-object v3, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    new-instance v3, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v3}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    move v4, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroidx/media3/common/Label;

    sget-object v7, Landroidx/media3/common/Label;->c:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroidx/media3/common/Label;->d:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v7, v5}, Landroidx/media3/common/Label;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, v2, Landroidx/media3/common/Format$Builder;->c:Lcom/google/common/collect/ImmutableList;

    sget-object p1, Landroidx/media3/common/Format;->U:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, v1, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move-object p1, v3

    :goto_4
    iput-object p1, v2, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    sget-object p1, Landroidx/media3/common/Format;->V:Ljava/lang/String;

    iget v3, v1, Landroidx/media3/common/Format;->e:I

    invoke-virtual {p0, p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v2, Landroidx/media3/common/Format$Builder;->e:I

    sget-object p1, Landroidx/media3/common/Format;->W:Ljava/lang/String;

    iget v3, v1, Landroidx/media3/common/Format;->f:I

    invoke-virtual {p0, p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v2, Landroidx/media3/common/Format$Builder;->f:I

    sget-object p1, Landroidx/media3/common/Format;->y0:Ljava/lang/String;

    iget v3, v1, Landroidx/media3/common/Format;->g:I

    invoke-virtual {p0, p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v2, Landroidx/media3/common/Format$Builder;->g:I

    sget-object p1, Landroidx/media3/common/Format;->X:Ljava/lang/String;

    iget v3, v1, Landroidx/media3/common/Format;->h:I

    invoke-virtual {p0, p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v2, Landroidx/media3/common/Format$Builder;->h:I

    sget-object p1, Landroidx/media3/common/Format;->Y:Ljava/lang/String;

    iget v3, v1, Landroidx/media3/common/Format;->i:I

    invoke-virtual {p0, p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v2, Landroidx/media3/common/Format$Builder;->i:I

    sget-object p1, Landroidx/media3/common/Format;->Z:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, v1, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    move-object p1, v3

    :goto_5
    iput-object p1, v2, Landroidx/media3/common/Format$Builder;->j:Ljava/lang/String;

    sget-object p1, Landroidx/media3/common/Format;->C0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, v1, Landroidx/media3/common/Format;->m:Ljava/lang/String;

    if-eqz p1, :cond_7

    goto :goto_6

    :cond_7
    move-object p1, v3

    :goto_6
    iput-object p1, v2, Landroidx/media3/common/Format$Builder;->l:Ljava/lang/String;

    sget-object p1, Landroidx/media3/common/Format;->a0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, v1, Landroidx/media3/common/Format;->n:Ljava/lang/String;

    if-eqz p1, :cond_8

    goto :goto_7

    :cond_8
    move-object p1, v3

    :goto_7
    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    sget-object p1, Landroidx/media3/common/Format;->b0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, v1, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    if-eqz p1, :cond_9

    goto :goto_8

    :cond_9
    move-object p1, v3

    :goto_8
    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    sget-object p1, Landroidx/media3/common/Format;->c0:Ljava/lang/String;

    iget v3, v1, Landroidx/media3/common/Format;->p:I

    invoke-virtual {p0, p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v2, Landroidx/media3/common/Format$Builder;->o:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroidx/media3/common/Format;->d0:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x24

    invoke-static {v0, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_b

    iput-object v3, v2, Landroidx/media3/common/Format$Builder;->q:Ljava/util/List;

    sget-object p1, Landroidx/media3/common/Format;->e0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/DrmInitData;

    iput-object p1, v2, Landroidx/media3/common/Format$Builder;->r:Landroidx/media3/common/DrmInitData;

    sget-object p1, Landroidx/media3/common/Format;->f0:Ljava/lang/String;

    iget-wide v3, v1, Landroidx/media3/common/Format;->t:J

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Landroidx/media3/common/Format$Builder;->s:J

    sget-object p1, Landroidx/media3/common/Format;->g0:Ljava/lang/String;

    iget v0, v1, Landroidx/media3/common/Format;->v:I

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v2, Landroidx/media3/common/Format$Builder;->u:I

    sget-object p1, Landroidx/media3/common/Format;->h0:Ljava/lang/String;

    iget v0, v1, Landroidx/media3/common/Format;->w:I

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v2, Landroidx/media3/common/Format$Builder;->v:I

    sget-object p1, Landroidx/media3/common/Format;->A0:Ljava/lang/String;

    iget v0, v1, Landroidx/media3/common/Format;->x:I

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v2, Landroidx/media3/common/Format$Builder;->w:I

    sget-object p1, Landroidx/media3/common/Format;->B0:Ljava/lang/String;

    iget v0, v1, Landroidx/media3/common/Format;->y:I

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v2, Landroidx/media3/common/Format$Builder;->x:I

    sget-object p1, Landroidx/media3/common/Format;->i0:Ljava/lang/String;

    iget v0, v1, Landroidx/media3/common/Format;->z:F

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, v2, Landroidx/media3/common/Format$Builder;->y:F

    sget-object p1, Landroidx/media3/common/Format;->j0:Ljava/lang/String;

    iget v0, v1, Landroidx/media3/common/Format;->A:I

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v2, Landroidx/media3/common/Format$Builder;->z:I

    sget-object p1, Landroidx/media3/common/Format;->k0:Ljava/lang/String;

    iget v0, v1, Landroidx/media3/common/Format;->B:F

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, v2, Landroidx/media3/common/Format$Builder;->A:F

    sget-object p1, Landroidx/media3/common/Format;->l0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, v2, Landroidx/media3/common/Format$Builder;->B:[B

    sget-object p1, Landroidx/media3/common/Format;->m0:Ljava/lang/String;

    iget v0, v1, Landroidx/media3/common/Format;->D:I

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v2, Landroidx/media3/common/Format$Builder;->C:I

    sget-object p1, Landroidx/media3/common/Format;->z0:Ljava/lang/String;

    iget v0, v1, Landroidx/media3/common/Format;->F:I

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v2, Landroidx/media3/common/Format$Builder;->E:I

    sget-object p1, Landroidx/media3/common/Format;->n0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_a

    new-instance v3, Landroidx/media3/common/ColorInfo;

    sget-object v0, Landroidx/media3/common/ColorInfo;->i:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    sget-object v0, Landroidx/media3/common/ColorInfo;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    sget-object v0, Landroidx/media3/common/ColorInfo;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    sget-object v0, Landroidx/media3/common/ColorInfo;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v8, Landroidx/media3/common/ColorInfo;->m:Ljava/lang/String;

    invoke-virtual {p1, v8, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    sget-object v9, Landroidx/media3/common/ColorInfo;->n:Ljava/lang/String;

    invoke-virtual {p1, v9, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    move-object v4, v0

    invoke-direct/range {v3 .. v9}, Landroidx/media3/common/ColorInfo;-><init>([BIIIII)V

    iput-object v3, v2, Landroidx/media3/common/Format$Builder;->D:Landroidx/media3/common/ColorInfo;

    :cond_a
    sget-object p1, Landroidx/media3/common/Format;->o0:Ljava/lang/String;

    iget v0, v1, Landroidx/media3/common/Format;->G:I

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v2, Landroidx/media3/common/Format$Builder;->F:I

    sget-object p1, Landroidx/media3/common/Format;->p0:Ljava/lang/String;

    iget v0, v1, Landroidx/media3/common/Format;->H:I

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v2, Landroidx/media3/common/Format$Builder;->G:I

    sget-object p1, Landroidx/media3/common/Format;->q0:Ljava/lang/String;

    iget v0, v1, Landroidx/media3/common/Format;->I:I

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v2, Landroidx/media3/common/Format$Builder;->H:I

    sget-object p1, Landroidx/media3/common/Format;->r0:Ljava/lang/String;

    iget v0, v1, Landroidx/media3/common/Format;->J:I

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v2, Landroidx/media3/common/Format$Builder;->I:I

    sget-object p1, Landroidx/media3/common/Format;->s0:Ljava/lang/String;

    iget v0, v1, Landroidx/media3/common/Format;->K:I

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v2, Landroidx/media3/common/Format$Builder;->J:I

    sget-object p1, Landroidx/media3/common/Format;->t0:Ljava/lang/String;

    iget v0, v1, Landroidx/media3/common/Format;->L:I

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v2, Landroidx/media3/common/Format$Builder;->K:I

    sget-object p1, Landroidx/media3/common/Format;->v0:Ljava/lang/String;

    iget v0, v1, Landroidx/media3/common/Format;->N:I

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v2, Landroidx/media3/common/Format$Builder;->M:I

    sget-object p1, Landroidx/media3/common/Format;->w0:Ljava/lang/String;

    iget v0, v1, Landroidx/media3/common/Format;->O:I

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v2, Landroidx/media3/common/Format$Builder;->N:I

    sget-object p1, Landroidx/media3/common/Format;->u0:Ljava/lang/String;

    iget v0, v1, Landroidx/media3/common/Format;->P:I

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v2, Landroidx/media3/common/Format$Builder;->O:I

    new-instance p0, Landroidx/media3/common/Format;

    invoke-direct {p0, v2}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    return-object p0

    :cond_b
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    :pswitch_3
    check-cast p1, Landroid/util/Size;

    new-instance p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;-><init>(II)V

    return-object p0

    :pswitch_4
    check-cast p1, Landroid/hardware/Camera$Size;

    new-instance p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;

    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {p0, v0, p1}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;-><init>(II)V

    return-object p0

    :pswitch_5
    check-cast p1, Landroidx/media3/extractor/mp4/Track;

    sget p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->G:I

    return-object p1

    :pswitch_6
    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p1}, Landroidx/media3/exoplayer/source/MediaPeriod;->p()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object p0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->b:Lcom/google/common/collect/ImmutableList;

    new-instance p1, Luh;

    const/16 v0, 0xf

    invoke-direct {p1, v0}, Luh;-><init>(I)V

    invoke-static {p1, p0}, Lcom/google/common/collect/Lists;->d(Lcom/google/common/base/Function;Ljava/util/List;)Ljava/util/AbstractList;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Ljava/util/Collection;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableMultiset;->q(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Ljava/lang/String;

    sget-object p0, Lcom/google/common/net/MediaType;->g:Lcom/google/common/base/CharMatcher;

    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->k(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_b

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_f

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    const/16 v4, 0x5c

    if-eq v2, v3, :cond_d

    if-eq v2, v4, :cond_d

    if-ne v2, v1, :cond_e

    :cond_d
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_f
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_b
    return-object p1

    :pswitch_9
    check-cast p1, Landroid/os/Bundle;

    sget-object p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->h:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->i:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->j:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->k:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->l:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v4, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->m:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->n:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;

    invoke-direct {v5, p0}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;-><init>(Landroid/net/Uri;)V

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->b:Ljava/lang/String;

    iput-object v2, v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->c:Ljava/lang/String;

    iput v3, v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->d:I

    iput v0, v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->e:I

    iput-object v4, v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->f:Ljava/lang/String;

    iput-object p1, v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->g:Ljava/lang/String;

    new-instance p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    invoke-direct {p0, v5}, Landroidx/media3/common/MediaItem$SubtitleConfiguration;-><init>(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)V

    return-object p0

    :pswitch_a
    check-cast p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->h:Ljava/lang/String;

    iget-object v1, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->a:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->b:Ljava/lang/String;

    if-eqz v0, :cond_10

    sget-object v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->i:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    iget-object v0, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->c:Ljava/lang/String;

    if-eqz v0, :cond_11

    sget-object v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->j:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    iget v0, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->d:I

    if-eqz v0, :cond_12

    sget-object v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->k:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_12
    iget v0, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->e:I

    if-eqz v0, :cond_13

    sget-object v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->l:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_13
    iget-object v0, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->f:Ljava/lang/String;

    if-eqz v0, :cond_14

    sget-object v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->m:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    iget-object p1, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->g:Ljava/lang/String;

    if-eqz p1, :cond_15

    sget-object v0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->n:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return-object p0

    :pswitch_b
    check-cast p1, Landroidx/media3/common/StreamKey;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    iget v0, p1, Landroidx/media3/common/StreamKey;->b:I

    if-eqz v0, :cond_16

    sget-object v1, Landroidx/media3/common/StreamKey;->e:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_16
    iget v0, p1, Landroidx/media3/common/StreamKey;->c:I

    if-eqz v0, :cond_17

    sget-object v1, Landroidx/media3/common/StreamKey;->f:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_17
    iget p1, p1, Landroidx/media3/common/StreamKey;->d:I

    if-eqz p1, :cond_18

    sget-object v0, Landroidx/media3/common/StreamKey;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_18
    return-object p0

    :pswitch_c
    check-cast p1, Landroidx/media3/extractor/mp4/Track;

    return-object p1

    :pswitch_d
    check-cast p1, Landroidx/media3/common/Label;

    sget-object p0, Landroidx/media3/common/Format;->R:Landroidx/media3/common/Format;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Landroidx/media3/common/Label;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/media3/common/Label;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_e
    new-instance p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    check-cast p1, Landroidx/media3/common/util/Clock;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;-><init>(Landroidx/media3/common/util/Clock;)V

    return-object p0

    :pswitch_f
    check-cast p1, Landroidx/media3/common/text/Cue;

    sget-object p0, Landroidx/media3/common/text/CueGroup;->c:Lcom/google/common/collect/Ordering;

    iget p0, p1, Landroidx/media3/common/text/Cue;->r:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Landroidx/media3/extractor/Extractor;

    invoke-interface {p1}, Landroidx/media3/extractor/Extractor;->c()Landroidx/media3/extractor/Extractor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
