.class Lcom/networkbench/agent/impl/m/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/m/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/networkbench/agent/impl/m/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/m/b;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/m/b;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/m/b$a;->a:Lcom/networkbench/agent/impl/m/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
