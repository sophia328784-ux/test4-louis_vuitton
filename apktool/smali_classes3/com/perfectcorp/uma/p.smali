.class interface abstract Lcom/perfectcorp/uma/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/uma/p$a;
    }
.end annotation


# static fields
.field public static final w0:Lcom/perfectcorp/uma/p$a;

.field public static final x0:Lcom/perfectcorp/uma/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/uma/p$a;

    invoke-direct {v0}, Lcom/perfectcorp/uma/p$a;-><init>()V

    sput-object v0, Lcom/perfectcorp/uma/p;->w0:Lcom/perfectcorp/uma/p$a;

    new-instance v0, Lcom/perfectcorp/uma/q;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/uma/p;->x0:Lcom/perfectcorp/uma/q;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/util/Map;ID)V
.end method

.method public abstract a_()V
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method
