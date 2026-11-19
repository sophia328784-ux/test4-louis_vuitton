.class public Lcom/dynatrace/android/agent/WebReqTag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/dynatrace/android/agent/data/Session;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:J

.field public final f:I


# direct methods
.method public constructor <init>(ILcom/dynatrace/android/agent/data/Session;Ljava/lang/String;JJI)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/dynatrace/android/agent/WebReqTag;->a:I

    .line 22
    iput-object p2, p0, Lcom/dynatrace/android/agent/WebReqTag;->b:Lcom/dynatrace/android/agent/data/Session;

    .line 23
    iput-object p3, p0, Lcom/dynatrace/android/agent/WebReqTag;->c:Ljava/lang/String;

    .line 24
    iput-wide p4, p0, Lcom/dynatrace/android/agent/WebReqTag;->d:J

    .line 25
    iput-wide p6, p0, Lcom/dynatrace/android/agent/WebReqTag;->e:J

    .line 26
    iput p8, p0, Lcom/dynatrace/android/agent/WebReqTag;->f:I

    return-void
.end method

.method public constructor <init>(JILcom/dynatrace/android/agent/data/Session;)V
    .locals 9

    sget-object v3, Lcom/dynatrace/android/agent/AdkSettings;->h:Ljava/lang/String;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->e()J

    move-result-wide v6

    sget-object v0, Lcom/dynatrace/android/agent/util/Utility;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v8

    move-object v0, p0

    move-wide v4, p1

    move v1, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v8}, Lcom/dynatrace/android/agent/WebReqTag;-><init>(ILcom/dynatrace/android/agent/data/Session;Ljava/lang/String;JJI)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MT_3_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dynatrace/android/agent/WebReqTag;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dynatrace/android/agent/WebReqTag;->b:Lcom/dynatrace/android/agent/data/Session;

    iget-wide v3, v2, Lcom/dynatrace/android/agent/data/Session;->b:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/dynatrace/android/agent/data/Session;->c:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-0_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/dynatrace/android/agent/WebReqTag;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/dynatrace/android/agent/WebReqTag;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/dynatrace/android/agent/WebReqTag;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/dynatrace/android/agent/WebReqTag;->f:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
