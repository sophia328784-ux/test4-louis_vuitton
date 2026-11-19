.class Lcom/networkbench/nbslens/nbsnativecrashlib/f$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/nbslens/nbsnativecrashlib/f;->b(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/networkbench/nbslens/nbsnativecrashlib/f;


# direct methods
.method public constructor <init>(Lcom/networkbench/nbslens/nbsnativecrashlib/f;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/f$i;->a:Lcom/networkbench/nbslens/nbsnativecrashlib/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/f$i;->a:Lcom/networkbench/nbslens/nbsnativecrashlib/f;

    invoke-static {v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/f;->b(Lcom/networkbench/nbslens/nbsnativecrashlib/f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/f$i;->a:Lcom/networkbench/nbslens/nbsnativecrashlib/f;

    invoke-static {p0}, Lcom/networkbench/nbslens/nbsnativecrashlib/f;->d(Lcom/networkbench/nbslens/nbsnativecrashlib/f;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
