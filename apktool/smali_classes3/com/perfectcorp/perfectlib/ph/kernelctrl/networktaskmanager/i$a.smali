.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;
.super Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final g:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;


# instance fields
.field public final c:Ljava/util/Collection;

.field public final d:Ljava/util/Collection;

.field public final e:Ljava/util/Collection;

.field public final f:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v5, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    check-cast v1, Ljava/util/List;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;->g:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p5}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;->c:Ljava/util/Collection;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;->d:Ljava/util/Collection;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;->e:Ljava/util/Collection;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;->f:Ljava/util/Collection;

    return-void
.end method
