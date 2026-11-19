.class Lcom/networkbench/nbslens/nbsnativecrashlib/b$a;
.super Landroid/os/FileObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/nbslens/nbsnativecrashlib/b;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZZLcom/networkbench/nbslens/nbsnativecrashlib/g;Lcom/networkbench/nbslens/nbsnativecrashlib/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/networkbench/nbslens/nbsnativecrashlib/b;


# direct methods
.method public constructor <init>(Lcom/networkbench/nbslens/nbsnativecrashlib/b;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b$a;->a:Lcom/networkbench/nbslens/nbsnativecrashlib/b;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1

    const-string p1, "/data/anr/"

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "trace"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/b$a;->a:Lcom/networkbench/nbslens/nbsnativecrashlib/b;

    invoke-static {p0, p1}, Lcom/networkbench/nbslens/nbsnativecrashlib/b;->a(Lcom/networkbench/nbslens/nbsnativecrashlib/b;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->c()Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    move-result-object p1

    const-string p2, "NBSAgent"

    const-string v0, "AnrHandler fileObserver onEvent failed"

    invoke-interface {p1, p2, v0, p0}, Lcom/networkbench/nbslens/nbsnativecrashlib/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
