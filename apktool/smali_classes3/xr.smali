.class public final synthetic Lxr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:Ljava/io/Serializable;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Long;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;I)V
    .locals 0

    const/4 p11, 0x0

    iput p11, p0, Lxr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxr;->d:Ljava/io/Serializable;

    iput-wide p2, p0, Lxr;->c:J

    iput-object p4, p0, Lxr;->e:Ljava/lang/Object;

    iput-object p5, p0, Lxr;->f:Ljava/lang/Object;

    iput-object p6, p0, Lxr;->g:Ljava/lang/Object;

    iput-object p7, p0, Lxr;->h:Ljava/lang/Object;

    iput-object p8, p0, Lxr;->i:Ljava/lang/Object;

    iput-object p9, p0, Lxr;->j:Ljava/lang/Object;

    iput-object p10, p0, Lxr;->k:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;JLkotlin/jvm/internal/Ref$LongRef;Lokio/RealBufferedSource;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lxr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxr;->d:Ljava/io/Serializable;

    iput-wide p2, p0, Lxr;->c:J

    iput-object p4, p0, Lxr;->e:Ljava/lang/Object;

    iput-object p5, p0, Lxr;->f:Ljava/lang/Object;

    iput-object p6, p0, Lxr;->g:Ljava/lang/Object;

    iput-object p7, p0, Lxr;->h:Ljava/lang/Object;

    iput-object p8, p0, Lxr;->i:Ljava/lang/Object;

    iput-object p9, p0, Lxr;->j:Ljava/lang/Object;

    iput-object p10, p0, Lxr;->k:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lxr;->b:I

    const/4 v1, 0x1

    iget-object v2, p0, Lxr;->k:Ljava/lang/Object;

    iget-object v3, p0, Lxr;->j:Ljava/lang/Object;

    iget-object v4, p0, Lxr;->i:Ljava/lang/Object;

    iget-object v5, p0, Lxr;->h:Ljava/lang/Object;

    iget-object v6, p0, Lxr;->g:Ljava/lang/Object;

    iget-object v7, p0, Lxr;->f:Ljava/lang/Object;

    iget-object v8, p0, Lxr;->e:Ljava/lang/Object;

    iget-object v9, p0, Lxr;->d:Ljava/io/Serializable;

    packed-switch v0, :pswitch_data_0

    check-cast v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    check-cast v8, Lkotlin/jvm/internal/Ref$LongRef;

    check-cast v7, Lokio/RealBufferedSource;

    check-cast v6, Lkotlin/jvm/internal/Ref$LongRef;

    check-cast v5, Lkotlin/jvm/internal/Ref$LongRef;

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 p2, 0x0

    if-eq p1, v1, :cond_2

    const/16 p0, 0xa

    if-eq p1, p0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 p0, 0x4

    cmp-long v0, v10, p0

    if-ltz v0, :cond_1

    invoke-virtual {v7, p0, p1}, Lokio/RealBufferedSource;->skip(J)V

    sub-long/2addr v10, p0

    long-to-int p0, v10

    new-instance p1, Lq71;

    invoke-direct {p1, v4, v7, v3, v2}, Lq71;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lokio/RealBufferedSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v7, p0, p1}, Lokio/internal/ZipFilesKt;->e(Lokio/RealBufferedSource;ILkotlin/jvm/functions/Function2;)V

    goto :goto_1

    :cond_1
    const-string p0, "bad zip: NTFS extra too short"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-boolean p1, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    if-nez p1, :cond_7

    iput-boolean v1, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    iget-wide p0, p0, Lxr;->c:J

    cmp-long p0, v10, p0

    if-ltz p0, :cond_6

    iget-wide p0, v8, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    const-wide v0, 0xffffffffL

    cmp-long p2, p0, v0

    if-nez p2, :cond_3

    invoke-virtual {v7}, Lokio/RealBufferedSource;->A0()J

    move-result-wide p0

    :cond_3
    iput-wide p0, v8, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    iget-wide p0, v6, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    cmp-long p0, p0, v0

    const-wide/16 p1, 0x0

    if-nez p0, :cond_4

    invoke-virtual {v7}, Lokio/RealBufferedSource;->A0()J

    move-result-wide v2

    goto :goto_0

    :cond_4
    move-wide v2, p1

    :goto_0
    iput-wide v2, v6, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    iget-wide v2, v5, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    cmp-long p0, v2, v0

    if-nez p0, :cond_5

    invoke-virtual {v7}, Lokio/RealBufferedSource;->A0()J

    move-result-wide p1

    :cond_5
    iput-wide p1, v5, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    :goto_1
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_2

    :cond_6
    const-string p0, "bad zip: zip64 extra too short"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string p0, "bad zip: zip64 extra repeated"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    :goto_2
    return-object p2

    :pswitch_0
    move-object v0, v9

    check-cast v0, Ljava/lang/Long;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    check-cast v6, Landroidx/compose/material3/internal/CalendarModel;

    check-cast v5, Lkotlin/ranges/IntRange;

    check-cast v4, Landroidx/compose/material3/DatePickerFormatter;

    check-cast v3, Landroidx/compose/material3/SelectableDates;

    move-object v9, v2

    check-cast v9, Landroidx/compose/material3/DatePickerColors;

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v11

    iget-wide v1, p0, Lxr;->c:J

    move-object v12, v8

    move-object v8, v3

    move-object v3, v12

    move-object v12, v7

    move-object v7, v4

    move-object v4, v12

    move-object v12, v6

    move-object v6, v5

    move-object v5, v12

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/DatePickerKt;->c(Ljava/lang/Long;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
