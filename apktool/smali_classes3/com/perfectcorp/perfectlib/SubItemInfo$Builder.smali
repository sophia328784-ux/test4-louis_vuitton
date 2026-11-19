.class Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/SubItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;

.field public d:Ljava/lang/String;

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->b:Ljava/lang/String;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a:I

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->a:Ljava/lang/String;

    return-void
.end method
