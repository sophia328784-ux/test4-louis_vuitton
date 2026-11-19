.class public final Lcom/sightcall/getmedia/di/MediaModule_GetContentResolverFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/content/ContentResolver;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/sightcall/getmedia/di/MediaModule;


# direct methods
.method private constructor <init>(Lcom/sightcall/getmedia/di/MediaModule;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/getmedia/di/MediaModule;",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/getmedia/di/MediaModule_GetContentResolverFactory;->module:Lcom/sightcall/getmedia/di/MediaModule;

    iput-object p2, p0, Lcom/sightcall/getmedia/di/MediaModule_GetContentResolverFactory;->contextProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/sightcall/getmedia/di/MediaModule;Ldagger/internal/Provider;)Lcom/sightcall/getmedia/di/MediaModule_GetContentResolverFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/getmedia/di/MediaModule;",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/sightcall/getmedia/di/MediaModule_GetContentResolverFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/getmedia/di/MediaModule_GetContentResolverFactory;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/getmedia/di/MediaModule_GetContentResolverFactory;-><init>(Lcom/sightcall/getmedia/di/MediaModule;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static getContentResolver(Lcom/sightcall/getmedia/di/MediaModule;Landroid/content/Context;)Landroid/content/ContentResolver;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/getmedia/di/MediaModule;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/getmedia/di/MediaModule_GetContentResolverFactory;->module:Lcom/sightcall/getmedia/di/MediaModule;

    iget-object p0, p0, Lcom/sightcall/getmedia/di/MediaModule_GetContentResolverFactory;->contextProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sightcall/getmedia/di/MediaModule_GetContentResolverFactory;->getContentResolver(Lcom/sightcall/getmedia/di/MediaModule;Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/sightcall/getmedia/di/MediaModule_GetContentResolverFactory;->get()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method
