.class public Lcom/batch/android/o/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/o/b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Date;

.field private final d:Ljava/util/TimeZone;

.field private final e:J

.field private final f:Ljava/util/Date;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/batch/android/o/b$a;

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Lcom/batch/android/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iput-object p4, p0, Lcom/batch/android/o/b;->b:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/batch/android/o/b;->a:Ljava/lang/String;

    new-instance p4, Ljava/util/Date;

    invoke-direct {p4, p2, p3}, Ljava/util/Date;-><init>(J)V

    iput-object p4, p0, Lcom/batch/android/o/b;->c:Ljava/util/Date;

    invoke-static {}, Lcom/batch/android/n/b0;->a()Lcom/batch/android/e/h0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/batch/android/e/h0;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/batch/android/n/b0;->a()Lcom/batch/android/e/h0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/batch/android/e/h0;->c()Ljava/util/Date;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    iput-object p2, p0, Lcom/batch/android/o/b;->f:Ljava/util/Date;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p2

    iput-object p2, p0, Lcom/batch/android/o/b;->d:Ljava/util/TimeZone;

    const-wide/16 p2, 0x0

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p1

    const-string p4, "ws.server.timestamp"

    invoke-virtual {p1, p4}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/batch/android/o/b;->e:J

    goto :goto_1

    :cond_1
    iput-wide p2, p0, Lcom/batch/android/o/b;->e:J

    goto :goto_1

    :cond_2
    iput-wide p2, p0, Lcom/batch/android/o/b;->e:J

    :goto_1
    sget-object p1, Lcom/batch/android/o/b$a;->c:Lcom/batch/android/o/b$a;

    iput-object p1, p0, Lcom/batch/android/o/b;->h:Lcom/batch/android/o/b$a;

    if-eqz p5, :cond_4

    invoke-virtual {p5}, Lcom/batch/android/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p5}, Lcom/batch/android/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/o/b;->g:Ljava/lang/String;

    goto :goto_3

    :cond_4
    :goto_2
    iput-object v0, p0, Lcom/batch/android/o/b;->g:Ljava/lang/String;

    :goto_3
    invoke-static {}, Lcom/batch/android/Batch;->getSessionID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/o/b;->i:Ljava/lang/String;

    return-void

    :cond_5
    const-string p0, "The event name cannot be empty or null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;Ljava/lang/String;Lcom/batch/android/o/b$a;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/String;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/batch/android/o/b;->a:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lcom/batch/android/o/b;->b:Ljava/lang/String;

    .line 129
    iput-object p3, p0, Lcom/batch/android/o/b;->c:Ljava/util/Date;

    .line 130
    iput-object p4, p0, Lcom/batch/android/o/b;->d:Ljava/util/TimeZone;

    .line 131
    iput-object p5, p0, Lcom/batch/android/o/b;->g:Ljava/lang/String;

    .line 132
    iput-object p6, p0, Lcom/batch/android/o/b;->h:Lcom/batch/android/o/b$a;

    .line 133
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/batch/android/o/b;->e:J

    .line 134
    iput-object p8, p0, Lcom/batch/android/o/b;->f:Ljava/util/Date;

    .line 135
    iput-object p9, p0, Lcom/batch/android/o/b;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/o/b;->c:Ljava/util/Date;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/o/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/o/b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/o/b;->g:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/o/b;->f:Ljava/util/Date;

    return-object p0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/batch/android/o/b;->e:J

    return-wide v0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/o/b;->i:Ljava/lang/String;

    return-object p0
.end method

.method public h()Lcom/batch/android/o/b$a;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/o/b;->h:Lcom/batch/android/o/b$a;

    return-object p0
.end method

.method public i()Ljava/util/TimeZone;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/o/b;->d:Ljava/util/TimeZone;

    return-object p0
.end method

.method public j()Z
    .locals 1

    iget-object p0, p0, Lcom/batch/android/o/b;->h:Lcom/batch/android/o/b$a;

    sget-object v0, Lcom/batch/android/o/b$a;->e:Lcom/batch/android/o/b$a;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
