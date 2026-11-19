.class public abstract Lcom/perfectcorp/uma/b$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/uma/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static a:Lcom/perfectcorp/uma/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/perfectcorp/uma/m;->v0:Lcom/perfectcorp/uma/m;

    sput-object v0, Lcom/perfectcorp/uma/b$d;->a:Lcom/perfectcorp/uma/m;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    sget-object v1, Lcom/perfectcorp/uma/b$d;->a:Lcom/perfectcorp/uma/m;

    invoke-interface {v1, v0, p0, p1}, Lcom/perfectcorp/uma/m;->a(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/perfectcorp/uma/b$d;->a:Lcom/perfectcorp/uma/m;

    const/4 v0, 0x6

    invoke-interface {p2, v0, p0, p1}, Lcom/perfectcorp/uma/m;->a(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    sget-object v1, Lcom/perfectcorp/uma/b$d;->a:Lcom/perfectcorp/uma/m;

    invoke-interface {v1, v0, p0, p1}, Lcom/perfectcorp/uma/m;->a(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x6

    sget-object v1, Lcom/perfectcorp/uma/b$d;->a:Lcom/perfectcorp/uma/m;

    invoke-interface {v1, v0, p0, p1}, Lcom/perfectcorp/uma/m;->a(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
