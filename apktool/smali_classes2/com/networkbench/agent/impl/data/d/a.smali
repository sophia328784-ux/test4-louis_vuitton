.class public Lcom/networkbench/agent/impl/data/d/a;
.super Lcom/networkbench/agent/impl/data/d/c;
.source "SourceFile"


# static fields
.field private static final g:Ljava/lang/String; = "app_start"

.field private static final h:Ljava/lang/String; = "0"

.field private static final i:Ljava/lang/String; = "firstPage"

.field private static final j:Ljava/lang/String; = "0"


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "firstPage"

    const/4 v1, -0x1

    const-string v2, "app_start"

    const-string v3, "0"

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/networkbench/agent/impl/data/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/networkbench/agent/impl/data/d/c;->c:Ljava/lang/String;

    return-void
.end method
