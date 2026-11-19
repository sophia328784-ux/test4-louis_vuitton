.class public interface abstract Landroidx/media3/datasource/cache/CacheKeyFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c0:Lmd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmd;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lmd;-><init>(I)V

    sput-object v0, Landroidx/media3/datasource/cache/CacheKeyFactory;->c0:Lmd;

    return-void
.end method


# virtual methods
.method public abstract b(Landroidx/media3/datasource/DataSpec;)Ljava/lang/String;
.end method
