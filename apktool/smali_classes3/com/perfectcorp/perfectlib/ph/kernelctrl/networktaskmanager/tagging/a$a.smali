.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$a;,
        Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$b;
    }
.end annotation


# instance fields
.field private final info:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$a;

.field private final types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a;->types:Ljava/util/List;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$a;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a;->info:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a;->types:Ljava/util/List;

    return-object p0
.end method

.method public final b()Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$a;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a;->info:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$a;

    return-object p0
.end method
