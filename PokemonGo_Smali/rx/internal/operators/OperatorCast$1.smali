.class Lrx/internal/operators/OperatorCast$1;
.super Lrx/Subscriber;
.source "OperatorCast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorCast;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorCast;

.field final synthetic val$o:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorCast;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorCast$1;, "Lrx/internal/operators/OperatorCast.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorCast$1;->this$0:Lrx/internal/operators/OperatorCast;

    iput-object p3, p0, Lrx/internal/operators/OperatorCast$1;->val$o:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/operators/OperatorCast$1;, "Lrx/internal/operators/OperatorCast.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorCast$1;->val$o:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 40
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorCast$1;, "Lrx/internal/operators/OperatorCast.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorCast$1;->val$o:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorCast$1;, "Lrx/internal/operators/OperatorCast.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorCast$1;->val$o:Lrx/Subscriber;

    iget-object v2, p0, Lrx/internal/operators/OperatorCast$1;->this$0:Lrx/internal/operators/OperatorCast;

    iget-object v2, v2, Lrx/internal/operators/OperatorCast;->castClass:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    .line 54
    :goto_d
    return-void

    .line 51
    :catch_e
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_d
.end method
