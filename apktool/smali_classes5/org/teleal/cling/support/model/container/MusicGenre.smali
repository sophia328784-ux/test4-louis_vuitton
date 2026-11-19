.class public Lorg/teleal/cling/support/model/container/MusicGenre;
.super Lorg/teleal/cling/support/model/container/GenreContainer;
.source "SourceFile"


# static fields
.field public static final q:Lorg/teleal/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v1, "object.container.genre.musicGenre"

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/container/MusicGenre;->q:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/teleal/cling/support/model/container/GenreContainer;-><init>()V

    sget-object v0, Lorg/teleal/cling/support/model/container/MusicGenre;->q:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->g:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 11
    invoke-direct/range {p0 .. p5}, Lorg/teleal/cling/support/model/container/GenreContainer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12
    sget-object p1, Lorg/teleal/cling/support/model/container/MusicGenre;->q:Lorg/teleal/cling/support/model/DIDLObject$Class;

    .line 13
    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLObject;->g:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 8
    iget-object p2, p2, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

    .line 9
    invoke-direct/range {p0 .. p5}, Lorg/teleal/cling/support/model/container/MusicGenre;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/container/Container;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/model/container/GenreContainer;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    return-void
.end method
