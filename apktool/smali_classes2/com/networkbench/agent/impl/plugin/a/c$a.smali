.class Lcom/networkbench/agent/impl/plugin/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/plugin/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/networkbench/agent/impl/plugin/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/networkbench/agent/impl/plugin/a/c;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/networkbench/agent/impl/plugin/a/c;-><init>(Landroid/content/Context;Lcom/networkbench/agent/impl/plugin/a/c$1;)V

    sput-object v0, Lcom/networkbench/agent/impl/plugin/a/c$a;->a:Lcom/networkbench/agent/impl/plugin/a/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
