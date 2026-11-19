.class public Lcom/dynatrace/android/agent/comm/HttpResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/Map;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/dynatrace/android/agent/comm/HttpResponse;->a:I

    iput-object p2, p0, Lcom/dynatrace/android/agent/comm/HttpResponse;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/dynatrace/android/agent/comm/HttpResponse;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/dynatrace/android/agent/comm/HttpResponse;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/dynatrace/android/agent/comm/HttpResponse;

    iget v2, p0, Lcom/dynatrace/android/agent/comm/HttpResponse;->a:I

    iget v3, p1, Lcom/dynatrace/android/agent/comm/HttpResponse;->a:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p1, Lcom/dynatrace/android/agent/comm/HttpResponse;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/dynatrace/android/agent/comm/HttpResponse;->b:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    :goto_0
    return v1

    :cond_4
    iget-object p1, p1, Lcom/dynatrace/android/agent/comm/HttpResponse;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/dynatrace/android/agent/comm/HttpResponse;->c:Ljava/lang/String;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    if-nez p1, :cond_6

    return v0

    :cond_6
    :goto_1
    return v1
.end method
