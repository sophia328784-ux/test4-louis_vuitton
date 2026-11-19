.class abstract Lcom/perfectcorp/uma/r$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/uma/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/uma/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/perfectcorp/uma/b;->b:Landroid/content/Context;

    :try_start_0
    new-instance v1, Lcom/perfectcorp/uma/r;

    invoke-direct {v1, v0}, Lcom/perfectcorp/uma/r;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    :goto_0
    sput-object v1, Lcom/perfectcorp/uma/r$a;->a:Lcom/perfectcorp/uma/r;

    return-void
.end method
