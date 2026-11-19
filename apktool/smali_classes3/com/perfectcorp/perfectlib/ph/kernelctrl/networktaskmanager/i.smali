.class public Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;->a:Ljava/util/Map;

    return-void
.end method
