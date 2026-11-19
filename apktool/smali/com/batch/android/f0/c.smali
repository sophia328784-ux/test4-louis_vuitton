.class public abstract Lcom/batch/android/f0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/f0/c$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/batch/android/json/JSONObject;

.field public e:Lcom/batch/android/f0/c$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/batch/android/f0/c$a;->b:Lcom/batch/android/f0/c$a;

    iput-object v0, p0, Lcom/batch/android/f0/c;->e:Lcom/batch/android/f0/c$a;

    iput-object p1, p0, Lcom/batch/android/f0/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    instance-of v0, p0, Lcom/batch/android/h0/b;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/batch/android/g0/a;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/batch/android/g0/a;

    invoke-virtual {p0}, Lcom/batch/android/g0/a;->o()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public b()Z
    .locals 0

    instance-of p0, p0, Lcom/batch/android/g0/a;

    return p0
.end method

.method public c()Z
    .locals 0

    instance-of p0, p0, Lcom/batch/android/h0/e;

    return p0
.end method
