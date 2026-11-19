.class public final synthetic Lnw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lnw;->b:I

    iput p1, p0, Lnw;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 54

    move-object/from16 v0, p0

    iget v1, v0, Lnw;->b:I

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    iget v0, v0, Lnw;->c:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Landroid/os/Bundle;

    sget-object v8, Landroidx/media3/common/Timeline;->a:Landroidx/media3/common/Timeline;

    sget-object v8, Landroidx/media3/common/Timeline$Period;->h:Ljava/lang/String;

    invoke-virtual {v1, v8, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    sget-object v8, Landroidx/media3/common/Timeline$Period;->i:Ljava/lang/String;

    invoke-virtual {v1, v8, v5, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    sget-object v8, Landroidx/media3/common/Timeline$Period;->j:Ljava/lang/String;

    invoke-virtual {v1, v8, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    sget-object v8, Landroidx/media3/common/Timeline$Period;->k:Ljava/lang/String;

    invoke-virtual {v1, v8, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    sget-object v8, Landroidx/media3/common/Timeline$Period;->l:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_e

    sget-object v8, Landroidx/media3/common/AdPlaybackState;->i:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_0

    new-array v0, v7, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-object/from16 v21, v0

    goto/16 :goto_d

    :cond_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    move v10, v7

    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_d

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    sget-object v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->m:Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    sget-object v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->n:Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v22

    sget-object v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->t:Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v23

    sget-object v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->o:Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    sget-object v5, Landroidx/media3/common/AdPlaybackState$AdGroup;->u:Ljava/lang/String;

    invoke-virtual {v11, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    sget-object v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->p:Ljava/lang/String;

    invoke-virtual {v11, v6}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    sget-object v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->q:Ljava/lang/String;

    invoke-virtual {v11, v3}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    sget-object v4, Landroidx/media3/common/AdPlaybackState$AdGroup;->r:Ljava/lang/String;

    invoke-virtual {v11, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v27

    sget-object v4, Landroidx/media3/common/AdPlaybackState$AdGroup;->s:Ljava/lang/String;

    invoke-virtual {v11, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v29

    sget-object v4, Landroidx/media3/common/AdPlaybackState$AdGroup;->v:Ljava/lang/String;

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    sget-object v7, Landroidx/media3/common/AdPlaybackState$AdGroup;->x:Ljava/lang/String;

    invoke-virtual {v11, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    move-object/from16 p0, v3

    sget-object v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->w:Ljava/lang/String;

    invoke-virtual {v11, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v32

    new-instance v19, Landroidx/media3/common/AdPlaybackState$AdGroup;

    if-nez v6, :cond_1

    const/4 v3, 0x0

    new-array v6, v3, [I

    :cond_1
    move-object/from16 v24, v6

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroidx/media3/common/MediaItem;

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    if-nez v6, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    invoke-static {v0, v6}, Landroidx/media3/common/MediaItem;->b(ILandroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object v6

    :goto_2
    aput-object v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v25, v2

    :goto_3
    const/4 v3, 0x0

    goto :goto_6

    :cond_4
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroidx/media3/common/MediaItem;

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    if-nez v6, :cond_5

    const/4 v6, 0x0

    goto :goto_5

    :cond_5
    sget-object v11, Landroidx/media3/common/MediaItem;->g:Landroidx/media3/common/MediaItem;

    new-instance v11, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v11}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    iput-object v6, v11, Landroidx/media3/common/MediaItem$Builder;->b:Landroid/net/Uri;

    invoke-virtual {v11}, Landroidx/media3/common/MediaItem$Builder;->a()Landroidx/media3/common/MediaItem;

    move-result-object v6

    :goto_5
    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v25, v3

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    new-array v2, v3, [Landroidx/media3/common/MediaItem;

    move-object/from16 v25, v2

    :goto_6
    if-nez p0, :cond_8

    new-array v2, v3, [J

    move-object/from16 v26, v2

    goto :goto_7

    :cond_8
    move-object/from16 v26, p0

    :goto_7
    new-array v2, v3, [Ljava/lang/String;

    if-nez v4, :cond_9

    :goto_8
    move-object/from16 v30, v2

    goto :goto_9

    :cond_9
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_8

    :goto_9
    if-nez v7, :cond_b

    new-array v2, v3, [Landroidx/media3/common/AdPlaybackState$SkipInfo;

    :cond_a
    move-object/from16 v31, v2

    goto :goto_c

    :cond_b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroidx/media3/common/AdPlaybackState$SkipInfo;

    const/4 v3, 0x0

    :goto_a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    if-nez v4, :cond_c

    const/16 v33, 0x0

    goto :goto_b

    :cond_c
    new-instance v33, Landroidx/media3/common/AdPlaybackState$SkipInfo;

    sget-object v5, Landroidx/media3/common/AdPlaybackState$SkipInfo;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v34

    sget-object v5, Landroidx/media3/common/AdPlaybackState$SkipInfo;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v36

    sget-object v5, Landroidx/media3/common/AdPlaybackState$SkipInfo;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v33 .. v38}, Landroidx/media3/common/AdPlaybackState$SkipInfo;-><init>(JJLjava/lang/String;)V

    :goto_b
    aput-object v33, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :goto_c
    invoke-direct/range {v19 .. v32}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    aput-object v19, v9, v10

    add-int/lit8 v10, v10, 0x1

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_d
    move-object/from16 v21, v9

    :goto_d
    sget-object v0, Landroidx/media3/common/AdPlaybackState;->j:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    sget-object v0, Landroidx/media3/common/AdPlaybackState;->k:Ljava/lang/String;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v24

    sget-object v0, Landroidx/media3/common/AdPlaybackState;->l:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v26

    new-instance v19, Landroidx/media3/common/AdPlaybackState;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v26}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    :goto_e
    move-object/from16 v17, v19

    goto :goto_f

    :cond_e
    sget-object v19, Landroidx/media3/common/AdPlaybackState;->g:Landroidx/media3/common/AdPlaybackState;

    goto :goto_e

    :goto_f
    new-instance v9, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v9}, Landroidx/media3/common/Timeline$Period;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v9 .. v18}, Landroidx/media3/common/Timeline$Period;->i(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)V

    return-object v9

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroid/os/Bundle;

    sget-object v2, Landroidx/media3/common/Timeline;->a:Landroidx/media3/common/Timeline;

    sget-object v2, Landroidx/media3/common/Timeline$Window;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-static {v0, v2}, Landroidx/media3/common/MediaItem;->b(ILandroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object v0

    :goto_10
    move-object/from16 v35, v0

    goto :goto_11

    :cond_f
    sget-object v0, Landroidx/media3/common/MediaItem;->g:Landroidx/media3/common/MediaItem;

    goto :goto_10

    :goto_11
    sget-object v0, Landroidx/media3/common/Timeline$Window;->u:Ljava/lang/String;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v37

    sget-object v0, Landroidx/media3/common/Timeline$Window;->v:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v39

    sget-object v0, Landroidx/media3/common/Timeline$Window;->w:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v41

    sget-object v0, Landroidx/media3/common/Timeline$Window;->x:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    sget-object v0, Landroidx/media3/common/Timeline$Window;->y:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v44

    sget-object v0, Landroidx/media3/common/Timeline$Window;->z:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {v0}, Landroidx/media3/common/MediaItem$LiveConfiguration;->b(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem$LiveConfiguration;

    move-result-object v2

    move-object/from16 v45, v2

    goto :goto_12

    :cond_10
    const/16 v45, 0x0

    :goto_12
    sget-object v0, Landroidx/media3/common/Timeline$Window;->A:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v2, Landroidx/media3/common/Timeline$Window;->B:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v46

    sget-object v2, Landroidx/media3/common/Timeline$Window;->C:Ljava/lang/String;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v48

    sget-object v2, Landroidx/media3/common/Timeline$Window;->D:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v50

    sget-object v2, Landroidx/media3/common/Timeline$Window;->E:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v51

    sget-object v2, Landroidx/media3/common/Timeline$Window;->F:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v52

    new-instance v33, Landroidx/media3/common/Timeline$Window;

    invoke-direct/range {v33 .. v33}, Landroidx/media3/common/Timeline$Window;-><init>()V

    sget-object v34, Landroidx/media3/common/Timeline$Window;->r:Ljava/lang/Object;

    const/16 v36, 0x0

    invoke-virtual/range {v33 .. v53}, Landroidx/media3/common/Timeline$Window;->b(Ljava/lang/Object;Landroidx/media3/common/MediaItem;Ljava/lang/Object;JJJZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJIIJ)V

    move-object/from16 v1, v33

    iput-boolean v0, v1, Landroidx/media3/common/Timeline$Window;->k:Z

    return-object v1

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
