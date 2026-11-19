.class final Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

.field public final b:Ljava/util/List;

.field public final c:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;Ljava/io/File;)V
    .locals 1

    .line 10
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;-><init>(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;Ljava/util/List;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;Ljava/util/List;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;->c:Ljava/io/File;

    return-void
.end method
