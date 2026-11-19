.class Lcom/networkbench/nbslens/nbsnativecrashlib/f$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/nbslens/nbsnativecrashlib/f;->a(Ljava/io/File;Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/networkbench/nbslens/nbsnativecrashlib/f;


# direct methods
.method public constructor <init>(Lcom/networkbench/nbslens/nbsnativecrashlib/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/f$f;->b:Lcom/networkbench/nbslens/nbsnativecrashlib/f;

    iput-object p2, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/f$f;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p1, "tombstone_"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/f$f;->a:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
