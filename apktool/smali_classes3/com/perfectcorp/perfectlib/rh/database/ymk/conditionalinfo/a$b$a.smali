.class public final Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final shadeFinderV4ItemGuidLabMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[F>;"
        }
    .end annotation
.end field

.field public final shadeFinderV4ItemGuidWcldMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$b$a;->shadeFinderV4ItemGuidWcldMapping:Ljava/util/Map;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$b$a;->shadeFinderV4ItemGuidLabMapping:Ljava/util/Map;

    return-void
.end method
