.class public final Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/logtrack/LoganConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:J

.field d:J

.field e:[B

.field f:[B

.field g:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;->c:J

    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;->d:J

    const-wide/32 v0, 0x3200000

    iput-wide v0, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;->g:J

    return-void
.end method


# virtual methods
.method public build()Lcom/networkbench/agent/impl/logtrack/LoganConfig;
    .locals 3

    new-instance v0, Lcom/networkbench/agent/impl/logtrack/LoganConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/logtrack/LoganConfig;-><init>(Lcom/networkbench/agent/impl/logtrack/LoganConfig$a;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->a(Lcom/networkbench/agent/impl/logtrack/LoganConfig;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->b(Lcom/networkbench/agent/impl/logtrack/LoganConfig;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;->c:J

    invoke-static {v0, v1, v2}, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->a(Lcom/networkbench/agent/impl/logtrack/LoganConfig;J)V

    iget-wide v1, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;->g:J

    invoke-static {v0, v1, v2}, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->b(Lcom/networkbench/agent/impl/logtrack/LoganConfig;J)V

    iget-wide v1, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;->d:J

    invoke-static {v0, v1, v2}, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->c(Lcom/networkbench/agent/impl/logtrack/LoganConfig;J)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;->e:[B

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->a(Lcom/networkbench/agent/impl/logtrack/LoganConfig;[B)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;->f:[B

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->b(Lcom/networkbench/agent/impl/logtrack/LoganConfig;[B)V

    return-object v0
.end method

.method public setCachePath(Ljava/lang/String;)Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setDay(J)Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;
    .locals 2

    const-wide/32 v0, 0x5265c00

    mul-long/2addr p1, v0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;->d:J

    return-object p0
.end method

.method public setEncryptIV16([B)Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;->f:[B

    return-object p0
.end method

.method public setEncryptKey16([B)Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;->e:[B

    return-object p0
.end method

.method public setMaxFile(J)Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;
    .locals 2

    const-wide/32 v0, 0x100000

    mul-long/2addr p1, v0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;->c:J

    return-object p0
.end method

.method public setMinSDCard(J)Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;->g:J

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;->b:Ljava/lang/String;

    return-object p0
.end method
