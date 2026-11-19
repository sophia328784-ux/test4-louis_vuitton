.class public final synthetic Lq71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic d:Lokio/RealBufferedSource;

.field public final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lokio/RealBufferedSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lq71;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq71;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lq71;->d:Lokio/RealBufferedSource;

    iput-object p3, p0, Lq71;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lq71;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method

.method public synthetic constructor <init>(Lokio/RealBufferedSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lq71;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq71;->d:Lokio/RealBufferedSource;

    iput-object p2, p0, Lq71;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lq71;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lq71;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lq71;->b:I

    const/4 v2, 0x1

    iget-object v3, v0, Lq71;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v0, Lq71;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v0, Lq71;->d:Lokio/RealBufferedSource;

    iget-object v0, v0, Lq71;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v7, p2

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    if-nez v1, :cond_1

    const-wide/16 v1, 0x18

    cmp-long v1, v7, v1

    if-nez v1, :cond_0

    invoke-virtual {v5}, Lokio/RealBufferedSource;->A0()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    invoke-virtual {v5}, Lokio/RealBufferedSource;->A0()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    invoke-virtual {v5}, Lokio/RealBufferedSource;->A0()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "bad zip: NTFS extra attribute tag 0x0001 size != 24"

    invoke-static {v0}, Laz;->o(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "bad zip: NTFS extra attribute tag 0x0001 repeated"

    invoke-static {v0}, Laz;->o(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_1
    return-object v6

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v7, p2

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/16 v9, 0x5455

    if-ne v1, v9, :cond_d

    const-wide/16 v9, 0x1

    cmp-long v1, v7, v9

    const-string v11, "bad zip: extended timestamp extra too short"

    if-ltz v1, :cond_c

    invoke-virtual {v5}, Lokio/RealBufferedSource;->readByte()B

    move-result v1

    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x0

    if-ne v12, v2, :cond_3

    move v12, v2

    goto :goto_2

    :cond_3
    move v12, v13

    :goto_2
    and-int/lit8 v14, v1, 0x2

    const/4 v15, 0x2

    if-ne v14, v15, :cond_4

    move v14, v2

    goto :goto_3

    :cond_4
    move v14, v13

    :goto_3
    const/4 v15, 0x4

    and-int/2addr v1, v15

    if-ne v1, v15, :cond_5

    goto :goto_4

    :cond_5
    move v2, v13

    :goto_4
    if-eqz v12, :cond_6

    const-wide/16 v9, 0x5

    :cond_6
    const-wide/16 v15, 0x4

    if-eqz v14, :cond_7

    add-long/2addr v9, v15

    :cond_7
    if-eqz v2, :cond_8

    add-long/2addr v9, v15

    :cond_8
    cmp-long v1, v7, v9

    if-ltz v1, :cond_b

    if-eqz v12, :cond_9

    invoke-virtual {v5}, Lokio/RealBufferedSource;->w1()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    :cond_9
    if-eqz v14, :cond_a

    invoke-virtual {v5}, Lokio/RealBufferedSource;->w1()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    :cond_a
    if-eqz v2, :cond_d

    invoke-virtual {v5}, Lokio/RealBufferedSource;->w1()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    goto :goto_5

    :cond_b
    invoke-static {v11}, Laz;->o(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    invoke-static {v11}, Laz;->o(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    :goto_5
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_6
    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
