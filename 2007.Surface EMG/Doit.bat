@echo off

bibtex paper
latex paper
latex paper

dvips paper

ps2pdf paper.ps
