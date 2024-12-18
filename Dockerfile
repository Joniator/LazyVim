FROM alpine:edge

RUN apk add git lazygit fzf curl neovim ripgrep alpine-sdk --update
COPY . /root/.config/nvim/
RUN nvim "+Lazy! install" +MasonToolsInstallSync +q!

ENTRYPOINT [ "nvim" ]