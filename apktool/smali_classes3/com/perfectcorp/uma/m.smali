.class public interface abstract Lcom/perfectcorp/uma/m;
.super Ljava/lang/Object;


# static fields
.field public static final u0:Lcom/perfectcorp/uma/m;

.field public static final v0:Lcom/perfectcorp/uma/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/uma/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/uma/m;->u0:Lcom/perfectcorp/uma/m;

    new-instance v0, Lcom/perfectcorp/uma/o;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/uma/m;->v0:Lcom/perfectcorp/uma/m;

    return-void
.end method


# virtual methods
.method public abstract a(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.end method
