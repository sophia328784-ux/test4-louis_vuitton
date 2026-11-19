.class public Landroidx/databinding/CallbackRegistry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/CallbackRegistry$NotifierCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public b:Ljava/util/ArrayList;

.field public c:J

.field public d:[J

.field public e:I

.field public final f:Landroidx/databinding/CallbackRegistry$NotifierCallback;


# direct methods
.method public constructor <init>(Landroidx/databinding/CallbackRegistry$NotifierCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/CallbackRegistry$NotifierCallback<",
            "TC;TT;TA;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/databinding/CallbackRegistry;->b:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/databinding/CallbackRegistry;->c:J

    iput-object p1, p0, Landroidx/databinding/CallbackRegistry;->f:Landroidx/databinding/CallbackRegistry$NotifierCallback;

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 9

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x40

    if-ge p1, v6, :cond_1

    shl-long/2addr v2, p1

    iget-wide p0, p0, Landroidx/databinding/CallbackRegistry;->c:J

    and-long/2addr p0, v2

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    return v4

    :cond_0
    return v5

    :cond_1
    iget-object p0, p0, Landroidx/databinding/CallbackRegistry;->d:[J

    if-nez p0, :cond_2

    return v5

    :cond_2
    div-int/lit8 v7, p1, 0x40

    sub-int/2addr v7, v4

    array-length v8, p0

    if-lt v7, v8, :cond_3

    return v5

    :cond_3
    aget-wide v7, p0, v7

    rem-int/2addr p1, v6

    shl-long p0, v2, p1

    and-long/2addr p0, v7

    cmp-long p0, p0, v0

    if-eqz p0, :cond_4

    return v4

    :cond_4
    return v5
.end method

.method public final b(IIIJLjava/lang/Object;)V
    .locals 6

    const-wide/16 v0, 0x1

    :goto_0
    if-ge p2, p3, :cond_1

    and-long v2, p4, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/databinding/CallbackRegistry;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Landroidx/databinding/CallbackRegistry;->f:Landroidx/databinding/CallbackRegistry$NotifierCallback;

    invoke-virtual {v3, v2, p6, p1}, Landroidx/databinding/CallbackRegistry$NotifierCallback;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    :cond_0
    const/4 v2, 0x1

    shl-long/2addr v0, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final declared-synchronized c(Landroidx/databinding/BaseObservable;I)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/databinding/CallbackRegistry;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/databinding/CallbackRegistry;->e:I

    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->d:[J

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, p2, v0, p1}, Landroidx/databinding/CallbackRegistry;->d(IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v3, v0, 0x40

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v7, p1

    move v2, p2

    :try_start_1
    invoke-virtual/range {v1 .. v7}, Landroidx/databinding/CallbackRegistry;->b(IIIJLjava/lang/Object;)V

    iget p0, v1, Landroidx/databinding/CallbackRegistry;->e:I

    add-int/lit8 p0, p0, -0x1

    iput p0, v1, Landroidx/databinding/CallbackRegistry;->e:I

    if-nez p0, :cond_3

    iget-object p0, v1, Landroidx/databinding/CallbackRegistry;->d:[J

    const-wide/16 p1, 0x0

    if-eqz p0, :cond_2

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    :goto_1
    if-ltz p0, :cond_2

    iget-object v0, v1, Landroidx/databinding/CallbackRegistry;->d:[J

    aget-wide v2, v0, p0

    cmp-long v0, v2, p1

    if-eqz v0, :cond_1

    add-int/lit8 v0, p0, 0x1

    mul-int/lit8 v0, v0, 0x40

    invoke-virtual {v1, v0, v2, v3}, Landroidx/databinding/CallbackRegistry;->e(IJ)V

    iget-object v0, v1, Landroidx/databinding/CallbackRegistry;->d:[J

    aput-wide p1, v0, p0

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_2
    move-object p0, v0

    goto :goto_4

    :cond_1
    :goto_3
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_2
    iget-wide v2, v1, Landroidx/databinding/CallbackRegistry;->c:J

    cmp-long p0, v2, p1

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    invoke-virtual {v1, p0, v2, v3}, Landroidx/databinding/CallbackRegistry;->e(IJ)V

    iput-wide p1, v1, Landroidx/databinding/CallbackRegistry;->c:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    move-object v1, p0

    goto :goto_2

    :goto_4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/databinding/CallbackRegistry;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    :try_start_1
    iput-wide v2, v1, Landroidx/databinding/CallbackRegistry;->c:J

    iput-object v0, v1, Landroidx/databinding/CallbackRegistry;->d:[J

    const/4 v0, 0x0

    iput v0, v1, Landroidx/databinding/CallbackRegistry;->e:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/databinding/CallbackRegistry;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/databinding/CallbackRegistry;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Landroidx/databinding/CallbackRegistry;->a(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Landroidx/databinding/CallbackRegistry;->b:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/databinding/CallbackRegistry;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v1

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final d(IILjava/lang/Object;)V
    .locals 7

    const/16 v1, 0x40

    if-gez p2, :cond_0

    iget-object v2, p0, Landroidx/databinding/CallbackRegistry;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v2, 0x0

    iget-wide v4, p0, Landroidx/databinding/CallbackRegistry;->c:J

    move-object v0, p0

    move v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroidx/databinding/CallbackRegistry;->b(IIIJLjava/lang/Object;)V

    return-void

    :cond_0
    iget-object v2, p0, Landroidx/databinding/CallbackRegistry;->d:[J

    aget-wide v4, v2, p2

    add-int/lit8 v2, p2, 0x1

    mul-int/2addr v2, v1

    iget-object v1, p0, Landroidx/databinding/CallbackRegistry;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v3, v2, 0x40

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, p1, v1, p3}, Landroidx/databinding/CallbackRegistry;->d(IILjava/lang/Object;)V

    move-object v0, p0

    move v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroidx/databinding/CallbackRegistry;->b(IIIJLjava/lang/Object;)V

    return-void
.end method

.method public final e(IJ)V
    .locals 7

    add-int/lit8 v0, p1, 0x3f

    const-wide/high16 v1, -0x8000000000000000L

    :goto_0
    if-lt v0, p1, :cond_1

    and-long v3, p2, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroidx/databinding/CallbackRegistry;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    const/4 v3, 0x1

    ushr-long/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
