.class public final Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a$a;


# instance fields
.field private final shadeFinderV4ItemGuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final shadeFinderV4ProductGuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a$a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a$a;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a$a;->a:Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a$a;->shadeFinderV4ItemGuids:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a$a;->shadeFinderV4ProductGuids:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a$a;->shadeFinderV4ItemGuids:Ljava/util/List;

    sget-object v0, Lcom/perfectcorp/common/utility/MoreCollections;->a:Ljava/util/Set;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a$a;->shadeFinderV4ProductGuids:Ljava/util/List;

    sget-object v0, Lcom/perfectcorp/common/utility/MoreCollections;->a:Ljava/util/Set;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object p0
.end method
