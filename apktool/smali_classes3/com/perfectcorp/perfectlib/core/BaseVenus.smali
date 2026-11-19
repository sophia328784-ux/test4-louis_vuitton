.class public Lcom/perfectcorp/perfectlib/core/BaseVenus;
.super Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;


# instance fields
.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/perfectcorp/common/PfCommonsJni;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "libvenus.so"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/core/BaseVenus;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v1, p0, Lcom/perfectcorp/perfectlib/core/BaseVenus;->d:Z

    iput-boolean v1, p0, Lcom/perfectcorp/perfectlib/core/BaseVenus;->e:Z

    iput-boolean v1, p0, Lcom/perfectcorp/perfectlib/core/BaseVenus;->f:Z

    iput-boolean v1, p0, Lcom/perfectcorp/perfectlib/core/BaseVenus;->g:Z

    iput v1, p0, Lcom/perfectcorp/perfectlib/core/BaseVenus;->h:I

    return-void
.end method


# virtual methods
.method public final n([I[B[Ljava/lang/Object;[IIIII)Z
    .locals 15

    move-object/from16 v5, p3

    move/from16 v7, p5

    const-string v0, "intermediate_model == null"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "static_model == null"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "colorable_layers == null"

    invoke-static {v5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, v5

    const/4 v13, 0x0

    if-ne v0, v7, :cond_2

    array-length v0, v5

    move v1, v13

    move v2, v1

    :goto_0
    const/4 v14, 0x1

    if-ge v1, v0, :cond_0

    aget-object v6, v5, v1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "name["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] == null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int/2addr v2, v14

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "colors == null"

    move-object/from16 v6, p4

    invoke-static {v6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    const/16 v9, 0xc8

    const/16 v10, 0xc8

    move-object v2, p0

    move/from16 v8, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v0 .. v12}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_PreprocessEyeContactModel(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[I[B[Ljava/lang/Object;[IIIIIII)Z

    move-result p0

    if-eqz p0, :cond_1

    return v14

    :cond_1
    const-string p0, "PreprocessEyeContactModel failed."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return v13

    :cond_2
    array-length p0, v5

    const-string v0, ") != "

    const-string v1, "colorable_layers.length ("

    invoke-static {v0, p0, v7, v1}, Lv7;->e(Ljava/lang/Object;IILjava/lang/String;)V

    return v13
.end method

.method public final o()Z
    .locals 3

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetFaceRegionOccludeLV(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    const-string p0, "SetFaceRegionOccludeLV failed."

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetInternalModelPaths(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, ", align="

    const-string p1, ", eye="

    const-string p2, "SetInternalModelPaths failed. detect="

    invoke-static {p2, v3, p0, v4, p1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", mouth="

    invoke-static {p0, v5, p1, v6}, Ld21;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetInternalModelPathsLV(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, ", align="

    const-string p1, ", eye="

    const-string p2, "SetInternalModelPaths failed. detect="

    invoke-static {p2, v3, p0, v4, p1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", region="

    invoke-static {p0, v5, p1, v6}, Ld21;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final r()I
    .locals 4

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/core/BaseVenus;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    not-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    const/16 v3, 0xe

    if-ge v2, v3, :cond_0

    const/4 v3, 0x1

    shl-int/2addr v3, v2

    or-int/2addr v3, v1

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method public final s(I)V
    .locals 3

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/core/BaseVenus;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    xor-int v2, v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
