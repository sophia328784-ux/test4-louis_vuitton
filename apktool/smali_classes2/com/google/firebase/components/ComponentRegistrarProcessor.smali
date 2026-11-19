.class public interface abstract Lcom/google/firebase/components/ComponentRegistrarProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final s0:Lbm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbm;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lbm;-><init>(I)V

    sput-object v0, Lcom/google/firebase/components/ComponentRegistrarProcessor;->s0:Lbm;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;
.end method
